class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :rounds, dependent: :destroy

  validates :name, :description,  length: { minimum: 3 }
end
