class Rating < ActiveRecord::Base
  belongs_to :game
  has_many :users, through: :game
end
