class Round < ActiveRecord::Base
  belongs_to :tournament
  has_and_belongs_to_many :teams
  has_and_belongs_to_many :matches
end
