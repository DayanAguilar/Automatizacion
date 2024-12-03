Then(/^I see the Product Total as "([^"]*)"$/) do |expected_total|
  within(:xpath, "/html/body/form/table/tbody/tr[1]/td/div/center/table") do
    rows = all("tr")
    expected_product_total = 0.0
    rows.each_with_index do |row, index|
      next if index == 0
      cells = row.all('td')
      if cells.count == 5
        total_price = cells[4].text.strip.gsub(/[^\d\.]/, '').to_f
        expected_product_total += total_price
      end
    end
    cells = rows[rows.count - 4].all('td')
    product_total = cells[2].text.strip.gsub(/[^\d\.]/, '').to_f
    expect(product_total).to eq(expected_total.to_f)
  end
end

And(/^I write the quantities for the product in the table$/) do |table|
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

And(/^I see the correct Sales Tax as "([^"]*)"$/) do |expected_tax|
  within(:xpath, "/html/body/form/table/tbody/tr[1]/td/div/center/table") do
    rows = all("tr")
    expected_product_total = 0.0
    rows.each_with_index do |row, index|
      next if index == 0
      cells = row.all('td')
      if cells.count == 5
        total_price = cells[4].text.strip.gsub(/[^\d\.]/, '').to_f
        expected_product_total += total_price
      end
    end

    cells = rows[rows.count - 4].all('td')
    product_total = cells[2].text.strip.gsub(/[^\d\.]/, '').to_f

    cells = rows[rows.count - 3].all('td')
    sales_tax = cells[1].text.strip.gsub(/[^\d\.]/, '').to_f

    expected_sales_tax = (expected_product_total.round(2) * 0.05).round(2)
    expect(sales_tax).to eq(expected_tax.to_f)
  end
end

And(/^I see the Grand Total as "([^"]*)"$/) do |expected_grand_total|
  within(:xpath, "/html/body/form/table/tbody/tr[1]/td/div/center/table") do
    rows = all("tr")
    expected_product_total = 0.0
    rows.each_with_index do |row, index|
      next if index == 0
      cells = row.all('td')
      if cells.count == 5
        total_price = cells[4].text.strip.gsub(/[^\d\.]/, '').to_f
        expected_product_total += total_price
      end
    end
    cells = rows[rows.count - 4].all('td')
    product_total = cells[2].text.strip.gsub(/[^\d\.]/, '').to_f

    cells = rows[rows.count - 3].all('td')
    sales_tax = cells[1].text.strip.gsub(/[^\d\.]/, '').to_f

    cells = rows[rows.count - 1].all('td')
    grand_total = cells[1].text.strip.gsub(/[^\d\.]/, '').to_f

    expected_grand_total = (sales_tax + product_total + 5.0).round(2)
    expect(grand_total).to eq(expected_grand_total.to_f)
  end
end
