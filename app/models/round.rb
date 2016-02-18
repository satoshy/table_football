class Round < ActiveRecord::Base
  belongs_to :tournament
  has_and_belongs_to_many :teams
  has_many :matches, dependent: :destroy
end
