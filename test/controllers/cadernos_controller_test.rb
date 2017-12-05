require 'test_helper'

class CadernosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caderno = cadernos(:one)
  end

  test "should get index" do
    get cadernos_url
    assert_response :success
  end

  test "should get new" do
    get new_caderno_url
    assert_response :success
  end

  test "should create caderno" do
    assert_difference('Caderno.count') do
      post cadernos_url, params: { caderno: { conteudo: @caderno.conteudo, titulo: @caderno.titulo } }
    end

    assert_redirected_to caderno_url(Caderno.last)
  end

  test "should show caderno" do
    get caderno_url(@caderno)
    assert_response :success
  end

  test "should get edit" do
    get edit_caderno_url(@caderno)
    assert_response :success
  end

  test "should update caderno" do
    patch caderno_url(@caderno), params: { caderno: { conteudo: @caderno.conteudo, titulo: @caderno.titulo } }
    assert_redirected_to caderno_url(@caderno)
  end

  test "should destroy caderno" do
    assert_difference('Caderno.count', -1) do
      delete caderno_url(@caderno)
    end

    assert_redirected_to cadernos_url
  end
end
