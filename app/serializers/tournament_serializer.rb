class TournamentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :status_type
end
