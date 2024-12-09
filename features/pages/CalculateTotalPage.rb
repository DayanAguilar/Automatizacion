class CalculateTotalPage
    include Capybara::DSL
  
    def initialize
      @table_xpath = "/html/body/form/table/tbody/tr[1]/td/div/center/table"
    end
  
    def fill_quantities(data)
      data.each_pair do |product, quantity|
        case product
        when "3 Person Dome Tent"
          fill_in 'QTY_TENTS', with: quantity
        when "External Frame Backpack"
          fill_in 'QTY_BACKPACKS', with: quantity
        when "Glacier Sun Glasses"
          fill_in 'QTY_GLASSES', with: quantity
        when "Padded Socks"
          fill_in 'QTY_SOCKS', with: quantity
        when "Hiking Boots"
          fill_in 'QTY_BOOTS', with: quantity
        when "Back Country Shorts"
          fill_in 'QTY_SHORTS', with: quantity
        end
      end
    end
  
    def calculate_product_total
      within(:xpath, @table_xpath) do
        rows = all("tr")
        total = 0.0
        rows.each_with_index do |row, index|
          next if index == 0
          cells = row.all('td')
          total_price = cells[4].text.strip.gsub(/[^\d\.]/, '').to_f if cells.count == 5
          total += total_price || 0.0
        end
        total.round(2)
      end
    end
  
    def product_total_matches?(expected_total)
      within(:xpath, @table_xpath) do
        rows = all("tr")
        cells = rows[rows.count - 4].all('td')
        product_total = cells[2].text.strip.gsub(/[^\d\.]/, '').to_f
        product_total == expected_total.to_f
      end
    end
  
    def calculate_sales_tax
      calculate_product_total * 0.05
    end
  
    def sales_tax_matches?(expected_tax)
      within(:xpath, @table_xpath) do
        rows = all("tr")
        cells = rows[rows.count - 3].all('td')
        sales_tax = cells[1].text.strip.gsub(/[^\d\.]/, '').to_f
        sales_tax == expected_tax.to_f
      end
    end
  
    def grand_total_matches?(expected_grand_total)
      within(:xpath, @table_xpath) do
        rows = all("tr")
        cells_product = rows[rows.count - 4].all('td')
        product_total = cells_product[2].text.strip.gsub(/[^\d\.]/, '').to_f
  
        cells_tax = rows[rows.count - 3].all('td')
        sales_tax = cells_tax[1].text.strip.gsub(/[^\d\.]/, '').to_f
  
        cells_grand = rows[rows.count - 1].all('td')
        grand_total = cells_grand[1].text.strip.gsub(/[^\d\.]/, '').to_f
  
        (product_total + sales_tax + 5.0).round(2) == expected_grand_total.to_f
      end
    end
  end