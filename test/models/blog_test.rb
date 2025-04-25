require "test_helper"

class BlogTest < ActiveSupport::TestCase
  setup do
    @blog = blogs(:one)
  end

  test "is valid" do
    assert @blog.valid?
  end

  test "is invalid without a title" do
    @blog.title = nil

    assert_not @blog.valid?
    assert_not_empty @blog.errors[:title]
  end
end
