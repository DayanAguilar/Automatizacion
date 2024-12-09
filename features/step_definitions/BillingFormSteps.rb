And(/^I see the summary of my purchase$/) do
  order_page = BillingFormPage.new
  expect(order_page.verify_summary_present).to be true
end

When(/^I click on the "Proceed With Order" Button$/) do
  order_page = BillingFormPage.new
  order_page.click_proceed_with_order
end

When(/^I click on the "Place The order" Button$/) do
  order_page = BillingFormPage.new
  order_page.click_proceed_with_order
end

And(/^I fill the form with the following data$/) do |table|
  data = table.rows_hash
  order_page = BillingFormPage.new
  order_page.fill_form(data)
end

When(/^I click on the same as bill$/) do
  order_page = BillingFormPage.new
  order_page.click_same_as_bill
end

Then(/^I see the successful notification$/) do
  order_page = BillingFormPage.new
  expect(order_page.verify_success_notification).to be true
end

Then(/^A notification pops up "(.*)"$/) do |notification|
  order_page = BillingFormPage.new
  expect(order_page.accept_notification(notification)).to be true
end