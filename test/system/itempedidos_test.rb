require "application_system_test_case"

class ItempedidosTest < ApplicationSystemTestCase
  setup do
    @itempedido = itempedidos(:one)
  end

  test "visiting the index" do
    visit itempedidos_url
    assert_selector "h1", text: "Itempedidos"
  end

  test "creating a Itempedido" do
    visit itempedidos_url
    click_on "New Itempedido"

    fill_in "Pedido", with: @itempedido.Pedido_id
    fill_in "Produto", with: @itempedido.Produto_id
    click_on "Create Itempedido"

    assert_text "Itempedido was successfully created"
    click_on "Back"
  end

  test "updating a Itempedido" do
    visit itempedidos_url
    click_on "Edit", match: :first

    fill_in "Pedido", with: @itempedido.Pedido_id
    fill_in "Produto", with: @itempedido.Produto_id
    click_on "Update Itempedido"

    assert_text "Itempedido was successfully updated"
    click_on "Back"
  end

  test "destroying a Itempedido" do
    visit itempedidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Itempedido was successfully destroyed"
  end
end
