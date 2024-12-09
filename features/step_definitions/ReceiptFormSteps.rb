Then(/^I see the following data in the receipt$/) do |table|
  data = table.rows_hash

  # Store the expected values from the table
  name = data['Name']
  address = data['Address']
  city = data['City']
  state = data['State']
  zip = data['Zip']
  phone = data['Phone']
  full_address = "#{city}, #{state} #{zip}"
  selectors = {
    'Name' => "/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[1]/td[5]/strong",
    'Address' => "/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[2]/td[5]/strong",
    'City' => "/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[3]/td[5]/strong",
    'Phone' => "/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[4]/td[5]/strong"
  }

  selectors.each do |key, xpath|
    expected_value = case key
                     when 'City'
                       full_address 
                     else
                       data[key] 
                     end

    element = find(:xpath, xpath)
    expect(element.text.strip).to eq(expected_value)
  end
end

Then(/^I see the succesful notification$/) do
  expected_text = 'Thank you for shopping with Green Mountain Outpost'
  actual_text = page.find(:xpath, '/html/body/h4/font').text
  expect(actual_text).to eq(expected_text)
end