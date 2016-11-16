class Post < ApplicationRecord
  has_many :comments
  belongs_to :subreddit
  validates :title, :content, :user, presence: true
end
