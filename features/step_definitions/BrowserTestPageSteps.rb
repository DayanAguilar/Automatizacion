Given(/^I am at GMO Browser Page$/) do
  @browser_test_page = BrowserTestPage.new
  @browser_test_page.open
end

When(/^I click the "Browser Test Page" button$/) do
  @browser_test_page.click_browser_test_button
end

Then('I see the list of differences') do |table|
  expected_values = table.raw.flatten
  actual_values = @browser_test_page.get_differences_list
  puts "Expected values: #{expected_values}"
  puts "Actual values: #{actual_values}"
  expect(actual_values).to eq(expected_values)
end