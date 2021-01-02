require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "creating a Invoice" do
    visit invoices_url
    click_on "New Invoice"

    fill_in "Bill from email", with: @invoice.bill_from_email
    fill_in "Bill from name", with: @invoice.bill_from_name
    fill_in "Bill to email", with: @invoice.bill_to_email
    fill_in "Bill to name", with: @invoice.bill_to_name
    fill_in "Discount", with: @invoice.discount
    fill_in "Item price", with: @invoice.item_price
    fill_in "Item qty", with: @invoice.item_qty
    fill_in "Item rate", with: @invoice.item_rate
    fill_in "Item ref", with: @invoice.item_ref
    fill_in "Item type", with: @invoice.item_type
    fill_in "Tax", with: @invoice.tax
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "updating a Invoice" do
    visit invoices_url
    click_on "Edit", match: :first

    fill_in "Bill from email", with: @invoice.bill_from_email
    fill_in "Bill from name", with: @invoice.bill_from_name
    fill_in "Bill to email", with: @invoice.bill_to_email
    fill_in "Bill to name", with: @invoice.bill_to_name
    fill_in "Discount", with: @invoice.discount
    fill_in "Item price", with: @invoice.item_price
    fill_in "Item qty", with: @invoice.item_qty
    fill_in "Item rate", with: @invoice.item_rate
    fill_in "Item ref", with: @invoice.item_ref
    fill_in "Item type", with: @invoice.item_type
    fill_in "Tax", with: @invoice.tax
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice" do
    visit invoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice was successfully destroyed"
  end
end
