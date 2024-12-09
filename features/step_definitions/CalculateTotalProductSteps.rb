order_page = CalculateTotalProductPage.new

And(/^I write "(.*)" in the value box "(.*)"$/) do |value, product|
  order_page.fill_product_quantity(product, value)
end

Then(/^I see the total price for each product$/) do
  order_page.validate_total_price
end

When(/^I click on the "Place an order" Button$/) do
  order_page.place_order
end
