class CalculateTotalProductPage
    include Capybara::DSL
  
    TABLE_XPATH = '/html/body/form/table/tbody/tr[2]/td/div/center/table'
    TOTAL_TABLE_XPATH = '/html/body/form/table/tbody/tr[1]/td/div/center/table'
    
    def fill_product_quantity(product, value)
      within(:xpath, TABLE_XPATH) do
        row = find('tr', text: product)
        row.find('input[type="text"]').set(value)
      end
    end
  
    def validate_total_price
      within(:xpath, TOTAL_TABLE_XPATH) do
        rows = all("tr")
        rows.each_with_index do |row, index|
          next if index == 0
          cells = row.all('td')
          if cells.count == 5
            quantity = cells[0].text.strip.to_f
            unit_price = cells[3].text.strip.gsub(/[^\d\.]/, '').to_f
            total_price = cells[4].text.strip.gsub(/[^\d\.]/, '').to_f
  
            expected_total_price = (unit_price * quantity).round(2)
            raise "Expected #{expected_total_price}, but got #{total_price}" unless total_price == expected_total_price
          end
        end
      end
    end
  
    def place_order
      click_button('bSubmit')
    end
  end
  