require 'test_helper'

class PokememosControllerTest < ActionController::TestCase
  setup do
    @pokememo = pokememos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pokememos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pokememo" do
    assert_difference('Pokememo.count') do
      post :create, pokememo: { ability: @pokememo.ability, item: @pokememo.item, move1: @pokememo.move1, move2: @pokememo.move2, move3: @pokememo.move3, move4: @pokememo.move4, name: @pokememo.name, nature: @pokememo.nature, staA: @pokememo.staA, staB: @pokememo.staB, staC: @pokememo.staC, staD: @pokememo.staD, staH: @pokememo.staH, staS: @pokememo.staS }
    end

    assert_redirected_to pokememo_path(assigns(:pokememo))
  end

  test "should show pokememo" do
    get :show, id: @pokememo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pokememo
    assert_response :success
  end

  test "should update pokememo" do
    patch :update, id: @pokememo, pokememo: { ability: @pokememo.ability, item: @pokememo.item, move1: @pokememo.move1, move2: @pokememo.move2, move3: @pokememo.move3, move4: @pokememo.move4, name: @pokememo.name, nature: @pokememo.nature, staA: @pokememo.staA, staB: @pokememo.staB, staC: @pokememo.staC, staD: @pokememo.staD, staH: @pokememo.staH, staS: @pokememo.staS }
    assert_redirected_to pokememo_path(assigns(:pokememo))
  end

  test "should destroy pokememo" do
    assert_difference('Pokememo.count', -1) do
      delete :destroy, id: @pokememo
    end

    assert_redirected_to pokememos_path
  end
end
