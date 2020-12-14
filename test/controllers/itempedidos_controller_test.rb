require "test_helper"

class ItempedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itempedido = itempedidos(:one)
  end

  test "should get index" do
    get itempedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_itempedido_url
    assert_response :success
  end

  test "should create itempedido" do
    assert_difference('Itempedido.count') do
      post itempedidos_url, params: { itempedido: { Pedido_id: @itempedido.Pedido_id, Produto_id: @itempedido.Produto_id } }
    end

    assert_redirected_to itempedido_url(Itempedido.last)
  end

  test "should show itempedido" do
    get itempedido_url(@itempedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_itempedido_url(@itempedido)
    assert_response :success
  end

  test "should update itempedido" do
    patch itempedido_url(@itempedido), params: { itempedido: { Pedido_id: @itempedido.Pedido_id, Produto_id: @itempedido.Produto_id } }
    assert_redirected_to itempedido_url(@itempedido)
  end

  test "should destroy itempedido" do
    assert_difference('Itempedido.count', -1) do
      delete itempedido_url(@itempedido)
    end

    assert_redirected_to itempedidos_url
  end
end
