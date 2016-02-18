class Team < ActiveRecord::Base
  belongs_to :first_user, class_name: "User"
  belongs_to :second_user, class_name: "User"
  has_many :fuser_teams, class_name: "Match", foreign_key: "first_team_id", dependent: :destroy
  has_many :suser_teams, class_name: "Match", foreign_key: "second_team_id", dependent: :destroy
  has_and_belongs_to_many :rounds
end