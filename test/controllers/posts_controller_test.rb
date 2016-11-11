require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should get new post form" do
    get new_post_url
    assert_response :success
  end

  test "can create a post" do
    post posts_url,
      params: { post: { title: "Awesome post", user: "Git Master aka. Luca", content: "This post is awesome keep reading." } }
    assert_redirected_to root_url
    follow_redirect!
    assert_response :success
  end  

end
