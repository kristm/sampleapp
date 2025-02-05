require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "should not be able to save Post without title and body" do
    post = Post.new
    assert_not post.save, "Saved without title and body"
  end
end
