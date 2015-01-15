class User < ActiveRecord::Base
  has_many :highscores
  has_many :comments
  has_many :ratings, through: :game
  has_many :games
  belongs_to :chat
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :username,
    presence: true,
    uniqueness: true
end
