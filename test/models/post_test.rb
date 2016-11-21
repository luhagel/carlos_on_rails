require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @subreddit = Subreddit.new(name: "Random stuff", slug: "random_stuff")
    @post = Post.create(title: "MY new post", content: "This post is awesome", user: users(:one), subreddit: @subreddit)
  end

  test "is post valid" do
    assert @post.valid?
  end

  test "is post invalid" do
    invalidPost = Post.new()
    assert_not invalidPost.valid?
  end
end
