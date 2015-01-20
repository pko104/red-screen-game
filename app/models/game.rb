class Game < ActiveRecord::Base
  has_many :paths
  has_many :highscores
  has_many :users, through: :highscores
end
