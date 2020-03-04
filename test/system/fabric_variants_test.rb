require "application_system_test_case"

class FabricVariantsTest < ApplicationSystemTestCase
  setup do
    @fabric_variant = fabric_variants(:one)
  end

  test "visiting the index" do
    visit fabric_variants_url
    assert_selector "h1", text: "Fabric Variants"
  end

  test "creating a Fabric variant" do
    visit fabric_variants_url
    click_on "New Fabric Variant"

    fill_in "Composition", with: @fabric_variant.composition
    fill_in "Fabric", with: @fabric_variant.fabric_id
    fill_in "Grammage", with: @fabric_variant.grammage
    fill_in "Name", with: @fabric_variant.name
    fill_in "Observation", with: @fabric_variant.observation
    fill_in "Reference", with: @fabric_variant.reference
    fill_in "Width", with: @fabric_variant.width
    click_on "Create Fabric variant"

    assert_text "Fabric variant was successfully created"
    click_on "Back"
  end

  test "updating a Fabric variant" do
    visit fabric_variants_url
    click_on "Edit", match: :first

    fill_in "Composition", with: @fabric_variant.composition
    fill_in "Fabric", with: @fabric_variant.fabric_id
    fill_in "Grammage", with: @fabric_variant.grammage
    fill_in "Name", with: @fabric_variant.name
    fill_in "Observation", with: @fabric_variant.observation
    fill_in "Reference", with: @fabric_variant.reference
    fill_in "Width", with: @fabric_variant.width
    click_on "Update Fabric variant"

    assert_text "Fabric variant was successfully updated"
    click_on "Back"
  end

  test "destroying a Fabric variant" do
    visit fabric_variants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fabric variant was successfully destroyed"
  end
end
