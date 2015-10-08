require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  setup do
    @link = links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create link" do
    assert_difference('Link.count') do
      post :create, params: { link: { description: @link.description, thumbnail_url: @link.thumbnail_url, title: @link.title, url: @link.url } }
    end

    assert_response 201
  end

  test "should show link" do
    get :show, params: { id: @link }
    assert_response :success
  end

  test "should update link" do
    patch :update, params: { id: @link, link: { description: @link.description, thumbnail_url: @link.thumbnail_url, title: @link.title, url: @link.url } }
    assert_response 200
  end

  test "should destroy link" do
    assert_difference('Link.count', -1) do
      delete :destroy, params: { id: @link }
    end

    assert_response 204
  end
end
