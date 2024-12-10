

Then(/^I see the following data in the receipt$/) do |table|
  receipt_page = ReceiptFormPage.new
  data = table.rows_hash
  receipt_page.validate_receipt(data)
end

Then(/^I see the succesful notification$/) do
  receipt_page = ReceiptFormPage.new
  receipt_page.validate_successful_notification
end
