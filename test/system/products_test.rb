require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Cod anterior", with: @product.cod_anterior
    fill_in "Cod fisico", with: @product.cod_fisico
    fill_in "Cod instituto", with: @product.cod_instituto
    fill_in "Cod senecyt", with: @product.cod_senecyt
    fill_in "Cod serie", with: @product.cod_serie
    fill_in "Color", with: @product.color
    fill_in "Descripcion", with: @product.descripcion
    fill_in "Estado", with: @product.estado
    fill_in "Marca", with: @product.marca
    fill_in "Material", with: @product.material
    fill_in "Nombre", with: @product.nombre
    fill_in "References", with: @product.references
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Cod anterior", with: @product.cod_anterior
    fill_in "Cod fisico", with: @product.cod_fisico
    fill_in "Cod instituto", with: @product.cod_instituto
    fill_in "Cod senecyt", with: @product.cod_senecyt
    fill_in "Cod serie", with: @product.cod_serie
    fill_in "Color", with: @product.color
    fill_in "Descripcion", with: @product.descripcion
    fill_in "Estado", with: @product.estado
    fill_in "Marca", with: @product.marca
    fill_in "Material", with: @product.material
    fill_in "Nombre", with: @product.nombre
    fill_in "References", with: @product.references
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
