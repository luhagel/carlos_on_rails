require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.create(title: "MY new post", content: "This post is awesome", user: "LucaDaGitMasta")
  end

  test "is post valid" do
    assert @post.valid?
  end

  test "is post invalid" do
    invalidPost = Post.new()
    assert_not invalidPost.valid?
  end
end
