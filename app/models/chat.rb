class Chat < ActiveRecord::Base
  belongs_to :user
  validates :message, presence: true

  def username
    if user
      user.username
    else
      "Anonymous"
    end
  end
end
