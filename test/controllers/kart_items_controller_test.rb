require 'test_helper'

class KartItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kart_item = kart_items(:one)
  end

  test "should get index" do
    get kart_items_url
    assert_response :success
  end

  test "should get new" do
    get new_kart_item_url
    assert_response :success
  end

  test "should create kart_item" do
    assert_difference('KartItem.count') do
      post kart_items_url, params: { kart_item: { product_id: @kart_item.product_id, quantity: @kart_item.quantity } }
    end

    assert_redirected_to kart_item_url(KartItem.last)
  end

  test "should show kart_item" do
    get kart_item_url(@kart_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_kart_item_url(@kart_item)
    assert_response :success
  end

  test "should update kart_item" do
    patch kart_item_url(@kart_item), params: { kart_item: { product_id: @kart_item.product_id, quantity: @kart_item.quantity } }
    assert_redirected_to kart_item_url(@kart_item)
  end

  test "should destroy kart_item" do
    assert_difference('KartItem.count', -1) do
      delete kart_item_url(@kart_item)
    end

    assert_redirected_to kart_items_url
  end
end
