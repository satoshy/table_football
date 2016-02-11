class Tournament < ActiveRecord::Base
  has_many :games, dependent: :destroy
  has_many :teams, dependent: :destroy
end
