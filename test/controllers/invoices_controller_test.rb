require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { bill_from_email: @invoice.bill_from_email, bill_from_name: @invoice.bill_from_name, bill_to_email: @invoice.bill_to_email, bill_to_name: @invoice.bill_to_name, discount: @invoice.discount, item_price: @invoice.item_price, item_qty: @invoice.item_qty, item_rate: @invoice.item_rate, item_ref: @invoice.item_ref, item_type: @invoice.item_type, tax: @invoice.tax } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { bill_from_email: @invoice.bill_from_email, bill_from_name: @invoice.bill_from_name, bill_to_email: @invoice.bill_to_email, bill_to_name: @invoice.bill_to_name, discount: @invoice.discount, item_price: @invoice.item_price, item_qty: @invoice.item_qty, item_rate: @invoice.item_rate, item_ref: @invoice.item_ref, item_type: @invoice.item_type, tax: @invoice.tax } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
