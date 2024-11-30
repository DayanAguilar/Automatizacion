And(/^I write "(.*)" in the value box "(.*)"$/) do |value, product|
    within(:xpath, '/html/body/form/table/tbody/tr[2]/td/div/center/table') do
      row = find('tr', text: product)
      row.find('input[type="text"]').set(value)
    end
  end
  
  And(/^I write the quantities for the product with the table below$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
      when "3 Person Dome Tent"
        fill_in 'QTY_TENTS', :with => value
      when "External Frame Backpack"
        fill_in 'QTY_BACKPACKS', :with => value
      when "Glacier Sun Glasses"
        fill_in 'QTY_GLASSES', :with => value
      when "Padded Socks"
        fill_in 'QTY_SOCKS', :with => value
      when "Hiking Boots"
        fill_in 'QTY_BOOTS', :with => value
      when "Back Country Shorts"
        fill_in 'QTY_SHORTS', :with => value
      end
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