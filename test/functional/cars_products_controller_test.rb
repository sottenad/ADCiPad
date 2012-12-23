require 'test_helper'

class CarsProductsControllerTest < ActionController::TestCase
  setup do
    @cars_product = cars_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cars_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cars_product" do
    assert_difference('CarsProduct.count') do
      post :create, cars_product: { car_id: @cars_product.car_id, product_id: @cars_product.product_id }
    end

    assert_redirected_to cars_product_path(assigns(:cars_product))
  end

  test "should show cars_product" do
    get :show, id: @cars_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cars_product
    assert_response :success
  end

  test "should update cars_product" do
    put :update, id: @cars_product, cars_product: { car_id: @cars_product.car_id, product_id: @cars_product.product_id }
    assert_redirected_to cars_product_path(assigns(:cars_product))
  end

  test "should destroy cars_product" do
    assert_difference('CarsProduct.count', -1) do
      delete :destroy, id: @cars_product
    end

    assert_redirected_to cars_products_path
  end
end
