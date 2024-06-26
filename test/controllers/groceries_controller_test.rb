require "test_helper"

class GroceriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grocery = groceries(:one)
  end

  test "should get index" do
    get groceries_url
    assert_response :success
  end

  test "should get new" do
    get new_grocery_url
    assert_response :success
  end

  test "should create grocery" do
    assert_difference("Grocery.count") do
      post groceries_url, params: { grocery: { category: @grocery.category, grocery_name: @grocery.grocery_name, pickup_time: @grocery.pickup_time, quantity: @grocery.quantity, store_name: @grocery.store_name } }
    end

    assert_redirected_to grocery_url(Grocery.last)
  end

  test "should show grocery" do
    get grocery_url(@grocery)
    assert_response :success
  end

  test "should get edit" do
    get edit_grocery_url(@grocery)
    assert_response :success
  end

  test "should update grocery" do
    patch grocery_url(@grocery), params: { grocery: { category: @grocery.category, grocery_name: @grocery.grocery_name, pickup_time: @grocery.pickup_time, quantity: @grocery.quantity, store_name: @grocery.store_name } }
    assert_redirected_to grocery_url(@grocery)
  end

  test "should destroy grocery" do
    assert_difference("Grocery.count", -1) do
      delete grocery_url(@grocery)
    end

    assert_redirected_to groceries_url
  end
end
