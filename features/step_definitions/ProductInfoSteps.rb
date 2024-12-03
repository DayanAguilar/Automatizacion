And(/^I click on the product "(.*)"$/) do |product|
  within('body > form > table > tbody > tr:nth-child(2) > td > div > center > table') do
    click_link(product)
  end
end

Then(/^I should see the item id "(.*)"$/) do |expected_item_id|
  matching_items = all('div table tbody tr').select do |row|
    item_id_cell = row.all('td')[1]
    item_id_cell && item_id_cell.text.strip == expected_item_id
  end
  expect(matching_items.size).to eq(1), 
    "Expected exactly one item with ID #{expected_item_id}, but found #{matching_items.size}"
end
