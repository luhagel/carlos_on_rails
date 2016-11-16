require 'test_helper'

class SubredditTest < ActiveSupport::TestCase
  test "subreddit is valid" do
    subreddit = Subreddit.new(name: "Random stuff", slug: "random_stuff")
    assert subreddit.valid?
  end
end
