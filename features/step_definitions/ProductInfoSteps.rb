And(/^I click on the product "(.*)"$/) do |product|
  @product_page = ProductInfoPage.new
  @product_page.click_on_product(product)
end

Then(/^I should see the item id "(.*)"$/) do |expected_item_id|
  @product_page = ProductInfoPage.new
  matching_items = @product_page.find_item_id(expected_item_id)
  expect(matching_items.size).to eq(1), 
    "Expected exactly one item with ID #{expected_item_id}, but found #{matching_items.size}"
end