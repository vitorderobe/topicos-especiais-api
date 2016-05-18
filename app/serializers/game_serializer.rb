class GameSerializer < ActiveModel::Serializer
  attributes :id, :home, :away, :home_score, :away_score, :championship, :place, :date, :time
end
