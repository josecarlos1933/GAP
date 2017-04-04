require 'test_helper'

class PublisherHousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publisher_house = publisher_houses(:one)
  end

  test "should get index" do
    get publisher_houses_url
    assert_response :success
  end

  test "should get new" do
    get new_publisher_house_url
    assert_response :success
  end

  test "should create publisher_house" do
    assert_difference('PublisherHouse.count') do
      post publisher_houses_url, params: { publisher_house: { created_at: @publisher_house.created_at, name: @publisher_house.name, updated_at: @publisher_house.updated_at } }
    end

    assert_redirected_to publisher_house_url(PublisherHouse.last)
  end

  test "should show publisher_house" do
    get publisher_house_url(@publisher_house)
    assert_response :success
  end

  test "should get edit" do
    get edit_publisher_house_url(@publisher_house)
    assert_response :success
  end

  test "should update publisher_house" do
    patch publisher_house_url(@publisher_house), params: { publisher_house: { created_at: @publisher_house.created_at, name: @publisher_house.name, updated_at: @publisher_house.updated_at } }
    assert_redirected_to publisher_house_url(@publisher_house)
  end

  test "should destroy publisher_house" do
    assert_difference('PublisherHouse.count', -1) do
      delete publisher_house_url(@publisher_house)
    end

    assert_redirected_to publisher_houses_url
  end
end
