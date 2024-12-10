class ReceiptPage
    def initialize
      @selectors = {
        'Name' => "/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[1]/td[5]/strong",
        'Address' => "/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[2]/td[5]/strong",
        'City' => "/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[3]/td[5]/strong",
        'Phone' => "/html/body/table[2]/tbody/tr[1]/td/div/center/table/tbody/tr[4]/td[5]/strong"
      }
    end
  
    def check_receipt_data(data)
      full_address = "#{data['City']}, #{data['State']} #{data['Zip']}"
  
      @selectors.each do |key, xpath|
        expected_value = key == 'City' ? full_address : data[key]
        element = find(:xpath, xpath)
        expect(element.text.strip).to eq(expected_value)
      end
    end
  
  
  end
  
  