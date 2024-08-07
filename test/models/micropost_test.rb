require 'test_helper'
class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @most_recent_micropost = @user.microposts.create!(content: "Writing a short test", created_at: Time.zone.now)
    @micropost = @user.microposts.build(content: "Lorem ipsum")
  end
  test "should be valid" do
    assert @micropost.valid?
  end
  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end
  test "content should be present" do
    @micropost.content = ""
    assert_not @micropost.valid?
  end
  test "content should be at most 140 characters" do
    @micropost.content = "a" * 141
    assert_not @micropost.valid?
  end
  test "order should be most recent first" do
    assert_equal @most_recent_micropost, Micropost.first  end
end