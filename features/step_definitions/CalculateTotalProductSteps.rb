And(/^I write "(.*)" in the value box "(.*)"$/) do |value, product|
    within(:xpath, '/html/body/form/table/tbody/tr[2]/td/div/center/table') do
      row = find('tr', text: product)
      row.find('input[type="text"]').set(value)
    end
  end
  
 
  
  Then(/^I see the total price for each product$/) do
    within(:xpath, "/html/body/form/table/tbody/tr[1]/td/div/center/table") do
      rows = all("tr")
      rows.each_with_index do |row, index|
        next if index == 0
        cells = row.all('td')
        if cells.count == 5
          quantity = cells[0].text.strip.to_f
          unit_price = cells[3].text.strip.gsub(/[^\d\.]/, '').to_f
          total_price = cells[4].text.strip.gsub(/[^\d\.]/, '').to_f
  
          expected_total_price = (unit_price * quantity).round(2)
          expect(total_price).to eq(expected_total_price)
        end
      end
    end
  end
  
  When(/^I click on the "Place an order" Button$/) do
    click_button('bSubmit')
  end