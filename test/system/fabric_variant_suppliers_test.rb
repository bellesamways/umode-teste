require "application_system_test_case"

class FabricVariantSuppliersTest < ApplicationSystemTestCase
  setup do
    @fabric_variant_supplier = fabric_variant_suppliers(:one)
  end

  test "visiting the index" do
    visit fabric_variant_suppliers_url
    assert_selector "h1", text: "Fabric Variant Suppliers"
  end

  test "creating a Fabric variant supplier" do
    visit fabric_variant_suppliers_url
    click_on "New Fabric Variant Supplier"

    fill_in "Fabric variant", with: @fabric_variant_supplier.fabric_variant_id
    fill_in "Min purchase", with: @fabric_variant_supplier.min_purchase
    fill_in "Price cents", with: @fabric_variant_supplier.price_cents
    fill_in "Price currency", with: @fabric_variant_supplier.price_currency
    fill_in "Price unit", with: @fabric_variant_supplier.price_unit
    click_on "Create Fabric variant supplier"

    assert_text "Fabric variant supplier was successfully created"
    click_on "Back"
  end

  test "updating a Fabric variant supplier" do
    visit fabric_variant_suppliers_url
    click_on "Edit", match: :first

    fill_in "Fabric variant", with: @fabric_variant_supplier.fabric_variant_id
    fill_in "Min purchase", with: @fabric_variant_supplier.min_purchase
    fill_in "Price cents", with: @fabric_variant_supplier.price_cents
    fill_in "Price currency", with: @fabric_variant_supplier.price_currency
    fill_in "Price unit", with: @fabric_variant_supplier.price_unit
    click_on "Update Fabric variant supplier"

    assert_text "Fabric variant supplier was successfully updated"
    click_on "Back"
  end

  test "destroying a Fabric variant supplier" do
    visit fabric_variant_suppliers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fabric variant supplier was successfully destroyed"
  end
end
