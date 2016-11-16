class Subreddit < ApplicationRecord
  has_many :posts
  validates :name, presence: true
end
