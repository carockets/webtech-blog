require 'test_helper'

class BlogItemsControllerTest < ActionController::TestCase
  setup do
    @blog_item = blog_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_item" do
    assert_difference('BlogItem.count') do
      post :create, blog_item: { content: @blog_item.content, name: @blog_item.name, tags: @blog_item.tags, time: @blog_item.time }
    end

    assert_redirected_to blog_item_path(assigns(:blog_item))
  end

  test "should show blog_item" do
    get :show, id: @blog_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blog_item
    assert_response :success
  end

  test "should update blog_item" do
    patch :update, id: @blog_item, blog_item: { content: @blog_item.content, name: @blog_item.name, tags: @blog_item.tags, time: @blog_item.time }
    assert_redirected_to blog_item_path(assigns(:blog_item))
  end

  test "should destroy blog_item" do
    assert_difference('BlogItem.count', -1) do
      delete :destroy, id: @blog_item
    end

    assert_redirected_to blog_items_path
  end
end
