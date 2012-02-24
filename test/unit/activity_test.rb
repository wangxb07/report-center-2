require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "auto increment id" do
    activity_first = Activity.new
    assert_equal true, activity_first.auto_increment_id
    assert_equal 100001, activity_first.increment_id

    activity_second = Activity.new
    assert_equal true, activity_second.auto_increment_id
    assert_equal 100002, activity_second.increment_id
  end

  test "save" do
    activity_first = Activity.new

    time = Time.new
    activity_first.start_time = time
    activity_first.end_time = time
    activity_first.name = "first activity"
    assert_equal true, activity_first.save
    assert_equal 100001, activity_first.increment_id
  end
end
