require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "should create contact" do
    visit contacts_url
    click_on "New contact"

    fill_in "Email", with: @contact.email
    fill_in "Info", with: @contact.info
    fill_in "Name", with: @contact.name
    fill_in "Project name", with: @contact.project_name
    fill_in "Project price", with: @contact.project_price
    fill_in "Project supply", with: @contact.project_supply
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "should update Contact" do
    visit contact_url(@contact)
    click_on "Edit this contact", match: :first

    fill_in "Email", with: @contact.email
    fill_in "Info", with: @contact.info
    fill_in "Name", with: @contact.name
    fill_in "Project name", with: @contact.project_name
    fill_in "Project price", with: @contact.project_price
    fill_in "Project supply", with: @contact.project_supply
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact" do
    visit contact_url(@contact)
    click_on "Destroy this contact", match: :first

    assert_text "Contact was successfully destroyed"
  end
end
