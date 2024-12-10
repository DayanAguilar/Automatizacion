class BillingFormPage
    include Capybara::DSL
  
    def initialize
      @place_order_text = "Place Order"
      @proceed_button = 'bSubmit'
      @bill_form_fields = {
        "Name" => 'billName',
        "Address" => 'billAddress',
        "City" => 'billCity',
        "State" => 'billState',
        "Zip" => 'billZipCode',
        "Phone" => 'billPhone',
        "E-mail" => 'billEmail',
        "Card Type" => 'CardType',
        "Card Number" => 'CardNumber',
        "Expiration" => 'CardDate'
      }
      @same_as_bill_checkbox = 'shipSameAsBill'
      @success_message_xpath = '/html/body/h4/font'
    end
  
    def verify_summary_present
      page.has_content?(@place_order_text)
    end
  
    def click_proceed_with_order
      click_button(@proceed_button)
    end
  
    def fill_form(data)
      data.each do |key, value|
        if @bill_form_fields.key?(key)
          field = @bill_form_fields[key]
          case key
          when "Card Type"
            select value, from: field
          else
            fill_in field, with: value unless value == "omit"
          end
        end
      end
    end
  
    def click_same_as_bill
      check(@same_as_bill_checkbox)
    end
  
    def verify_success_notification
      page.find(:xpath, @success_message_xpath).text == 'Thank you for shopping with Green Mountain Outpost'
    end
  
    def accept_notification(notification)
      alert = page.driver.browser.switch_to.alert
      alert_text = alert.text 
      alert_text == notification
    end
  end