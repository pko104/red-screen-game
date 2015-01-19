class Chat < ActiveRecord::Base
  has_many :users
  validates :message, presence: true
end
