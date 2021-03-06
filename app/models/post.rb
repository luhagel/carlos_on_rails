class Post < ApplicationRecord
  has_many :comments

  belongs_to :subreddit
  belongs_to :user

  validates :title, :content, presence: true
end
