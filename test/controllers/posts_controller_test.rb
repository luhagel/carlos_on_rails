require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @subreddit = Subreddit.create(name: "Random stuff", slug: "random_stuff")
    @user = User.create(email: "hola@whatever.com", password: "totallysecure")
  end

  test "should get index" do
    get subreddit_path(@subreddit)
    assert_response :success
  end

  test "should get new post form" do
    get new_subreddit_post_path(@subreddit)
    assert_response :success
  end

  # test "can create a post" do
  #   assert_difference('Post.count') do
  #     post subreddit_posts_path(@subreddit), params: { post: { title: "Awesome post", user: @user, content: "This post is awesome keep reading." } }
  #   end
  #   assert_response :success
  # end  

end

class ActionController::TestCase
  include Devise::Test::ControllerHelpers    
end