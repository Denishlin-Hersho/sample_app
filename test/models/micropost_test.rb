require 'test_helper'
class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
<<<<<<< HEAD
    @micropost = Micropost.new(content: "Lorem ipsum", user_id: @user.id)
  end
  test "should be valid" do
    assert @micropost.valid?
  end
=======
    # This code is not idiomatically correct.
    @micropost = @user.microposts.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert @micropost.valid?
  end

>>>>>>> user-microposts
  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end
<<<<<<< HEAD
  test "content should be present" do
    @micropost.content = " "
    assert_not @micropost.valid?
  end
=======

>>>>>>> user-microposts
  test "content should be at most 140 characters" do
    @micropost.content = "a" * 141
    assert_not @micropost.valid?
  end
<<<<<<< HEAD
end
=======

  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
    end
  end
>>>>>>> user-microposts
