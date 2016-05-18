class Game < ActiveRecord::Base
  validates :home, :away, presence: true
end
