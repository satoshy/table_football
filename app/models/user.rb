class User < ActiveRecord::Base
  rolify
  
  has_and_belongs_to_many :tournament
  has_many :fusers, class_name: "Team", foreign_key: "first_user_id", dependent: :destroy
  has_many :susers, class_name: "Team", foreign_key: "second_user_id", dependent: :destroy

  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]

  #validates :first_name, :last_name,  length: { minimum: 3 }
  #validates_presence_of   :avatar
  #validates_integrity_of  :avatar
  #validates_processing_of :avatar

  def self.facebook_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  def self.google_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    unless user
      user = User.create(email: data["email"], password: Devise.friendly_token[0,20])
    end

    user
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end