class ProductInfoPage
    include Capybara::DSL
  
    def click_on_product(product_name)
      within(:xpath, "/html/body/form/table/tbody/tr[2]/td/div/center/table") do
        click_link(product_name)
      end
    end
  
    def find_item_id(expected_item_id)
      matching_items = all('div table tbody tr').select do |row|
        item_id_cell = row.all('td')[1]
        item_id_cell && item_id_cell.text.strip == expected_item_id
      end
      matching_items
    end
  end