require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Description", with: @product.description
    fill_in "H1", with: @product.h1
    fill_in "Key words", with: @product.key_words
    fill_in "Manufacturer", with: @product.manufacturer
    fill_in "Minimal amount", with: @product.minimal_amount
    fill_in "Name", with: @product.name
    fill_in "Price", with: @product.price
    fill_in "Title", with: @product.title
    fill_in "Vendor code", with: @product.vendor_code
    fill_in "Weight", with: @product.weight
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product.description
    fill_in "H1", with: @product.h1
    fill_in "Key words", with: @product.key_words
    fill_in "Manufacturer", with: @product.manufacturer
    fill_in "Minimal amount", with: @product.minimal_amount
    fill_in "Name", with: @product.name
    fill_in "Price", with: @product.price
    fill_in "Title", with: @product.title
    fill_in "Vendor code", with: @product.vendor_code
    fill_in "Weight", with: @product.weight
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
