class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :rounds, dependent: :destroy

  enum status_type: { CURRENT: 0, NOT_STARTED: 1, FINISHED: 2 }
end
