Given(/^I am at GMO Browser Page$/) do
  page.driver.browser.manage.window.maximize
  visit ('https://demo.borland.com/gmopost/')
 end

When(/^I click the "Browser Test Page" button$/) do
    click_button("bBrowserTest")
 end

Then('I see the list of differences') do |table|
  expected_values = table.raw.flatten
  actual_text = page.find(:xpath, '//html/body/div/center/table/tbody/tr/td[2]/table').text.strip
  actual_values = actual_text.split("\n").map(&:strip)
  puts "Expected values: #{expected_values}"
  puts "Actual values: #{actual_values}"
  expect(actual_values).to eq(expected_values)
 end