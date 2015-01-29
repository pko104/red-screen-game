class Path < ActiveRecord::Base
  belongs_to :user
  belongs_to :game

  def to_param
    "#{id}-#{title.parameterize}"
  end

end
