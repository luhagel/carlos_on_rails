class Post < ApplicationRecord
  validates :title, :content, :user, presence: true
end
