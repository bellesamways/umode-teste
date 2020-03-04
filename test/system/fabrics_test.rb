require "application_system_test_case"

class FabricsTest < ApplicationSystemTestCase
  setup do
    @fabric = fabrics(:one)
  end

  test "visiting the index" do
    visit fabrics_url
    assert_selector "h1", text: "Fabrics"
  end

  test "creating a Fabric" do
    visit fabrics_url
    click_on "New Fabric"

    fill_in "Name", with: @fabric.name
    fill_in "Observation", with: @fabric.observation
    fill_in "Reference", with: @fabric.reference
    click_on "Create Fabric"

    assert_text "Fabric was successfully created"
    click_on "Back"
  end

  test "updating a Fabric" do
    visit fabrics_url
    click_on "Edit", match: :first

    fill_in "Name", with: @fabric.name
    fill_in "Observation", with: @fabric.observation
    fill_in "Reference", with: @fabric.reference
    click_on "Update Fabric"

    assert_text "Fabric was successfully updated"
    click_on "Back"
  end

  test "destroying a Fabric" do
    visit fabrics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fabric was successfully destroyed"
  end
end
