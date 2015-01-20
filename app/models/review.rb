class Review < ActiveRecord::Base
  belongs_to :user
  validates :message, presence: true
  validates :rating, presence: true
  validates :user_id, uniqueness: true

  def username
    if user
      user.username
    else
      "Anonymous"
    end
  end


end
