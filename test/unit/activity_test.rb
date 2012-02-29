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
    assert_equal false, activity_first.save

    assert_equal("Products can't be blank",
           activity_first.errors.full_message(:products, "can't be blank"))

    assert_equal("Sales channel can't be blank",
           activity_first.errors.full_message(:sales_channel, "can't be blank"))

    activity_first.products_attributes = [
      { :outer_sku => "1001111", :activity_price => "10", :name => "test" },
      { :outer_sku => "1000222222", :name => "test2" }
    ]

    activity_first.sales_channel = SalesChannel.new

    assert_equal true, activity_first.save
    assert_equal 100001, activity_first.increment_id

    assert_equal 2, activity_first.products.count
    assert_equal 10, ActivityProduct.find_by_outer_sku("1001111").activity_price
    assert_equal 0, ActivityProduct.find_by_outer_sku("1000222222").activity_price
  end
end
