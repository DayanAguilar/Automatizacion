class ReceiptFormPage
  include Capybara::DSL

  def initialize
  end

  def validate_receipt(data)
    full_address = "#{data['City']}, #{data['State']} #{data['Zip']}"
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
      raise "Expected '#{expected_value}', but got '#{element.text.strip}'" unless element.text.strip == expected_value
    end
  end

  def validate_successful_notification
    expected_text = 'Thank you for shopping with Green Mountain Outpost'
    actual_text = page.find(:xpath, '/html/body/h4/font').text
    raise "Expected '#{expected_text}', but got '#{actual_text}'" unless actual_text == expected_text
  end
end
