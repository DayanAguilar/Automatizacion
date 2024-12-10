
class ResetFormPage
    include Capybara::DSL
    def initialize
    end
  
    def click_reset_button
      page.click_button('bReset')
    end
  
    def validate_form(table)
      within('body > form > table > tbody > tr:nth-child(2) > td > div > center > table') do
        table.hashes.each do |row|
          product = row['product']
          expected_value = row['value'].strip  
          product_row = find('tr', text: product)
          actual_value = product_row.find('input[type="text"]').value.strip  
          if expected_value == '0'
            raise "Expected '0', but got '#{actual_value}'" unless actual_value == '0'
          else
            raise "Expected #{expected_value}, but got #{actual_value}" unless actual_value == expected_value
          end
        end
      end
    end
  end
  