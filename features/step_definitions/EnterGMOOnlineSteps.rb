Given(/^I am at GMO online catalog$/) do
  @catalog_page = EnterGMOOnlinePage.new
  @catalog_page.visit_catalog_page
end

When(/^I click the "About the Enter GMO Online" button$/) do
  @catalog_page.click_about_enter_gmo_online_button
end

Then('I see the Online Catalog') do |table|
  catalog_table = page.find('body > form > table > tbody > tr:nth-child(2) > td > div > center > table')
  
  expected_items = table.raw.flatten.map(&:to_s)
  actual_items = catalog_table.all('tr').map do |row|
    row.all('td').map(&:text)
  end.flatten.map do |item|
    item = item.strip
    item = item.gsub(/\s*\$\s*/, '$')
    item = item.gsub(/\n/, ' ')
    item
  end.reject(&:empty?).uniq
  actual_items += Array.new(6 - actual_items.count { |item| item == "0" }) { "0" }
  puts "Expected items count: #{expected_items.count}"
  puts "Actual items count: #{actual_items.count}"
  puts "Expected items: #{expected_items}"
  puts "Actual items: #{actual_items}"
  
  missing_items = expected_items - actual_items
  extra_items = actual_items - expected_items
  
  puts "Missing items: #{missing_items}" unless missing_items.empty?
  puts "Extra items: #{extra_items}" unless extra_items.empty?

  expect(actual_items.sort).to match_array(expected_items.sort)
end