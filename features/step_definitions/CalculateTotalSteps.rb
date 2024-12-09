And(/^I write the quantities for the product in the table$/) do |table|
  @product_page = CalculateTotalPage.new
  @product_page.fill_quantities(table.rows_hash)
end

Then(/^I see the Product Total as "([^"]*)"$/) do |expected_total|
  expect(@product_page.product_total_matches?(expected_total)).to be_truthy
end

And(/^I see the correct Sales Tax as "([^"]*)"$/) do |expected_tax|
  expect(@product_page.sales_tax_matches?(expected_tax)).to be_truthy
end

And(/^I see the Grand Total as "([^"]*)"$/) do |expected_grand_total|
  expect(@product_page.grand_total_matches?(expected_grand_total)).to be_truthy
end