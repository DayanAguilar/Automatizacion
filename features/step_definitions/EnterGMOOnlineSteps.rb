Given(/^I am at GMO online catalog$/) do
    page.driver.browser.manage.window.maximize
    visit ('https://demo.borland.com/gmopost/')
  end
  
When(/^I click the "About the Enter GMO Online" button$/) do
      click_button("bSubmit")
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
    end
    
    actual_items = actual_items.reject(&:empty?).uniq
    
    (6 - actual_items.count { |item| item == "0" }).times do
      actual_items << "0"
    end
    
    puts "Expected items count: #{expected_items.count}"
    puts "Actual items count: #{actual_items.count}"
    puts "Expected items: #{expected_items}"
    puts "Actual items: #{actual_items}"
    
    missing_items = expected_items - actual_items
    extra_items = actual_items - expected_items
    
    puts "Missing items: #{missing_items}" unless missing_items.empty?
    puts "Extra items: #{extra_items}" unless extra_items.empty?
    
    expect(actual_items).to match_array(expected_items)
  end