class Post < ApplicationRecord
  has_many :comments
  
  validates :title, :content, :user, presence: true
end
