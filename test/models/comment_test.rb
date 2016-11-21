require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "comment has author" do
    user = users(:one)
    post = Post.create(title: "New post", content: "asdkjalsdjlakwjeoiw jawioej oiaw", user: user)
    comment = Comment.create(content: "Awesome post!", user: user, post: post)
    assert !comment.user.nil?
  end
end

class ActionController::TestCase
  include Devise::TestHelpers    
end
