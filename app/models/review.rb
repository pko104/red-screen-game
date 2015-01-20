class Review < ActiveRecord::Base
  belongs_to :user
  validates :review_message, presence: true
  validates :rating_number, presence: true
end
