

class ShipToFormPage
    include Capybara::DSL
    def initialize
    end
  
    def fill_form(data)
      field_xpaths = {
        "Name" => "/html/body/form/table/tbody/tr[2]/td[3]/table/tbody/tr[2]/td[2]/input",
        "Address" => "/html/body/form/table/tbody/tr[2]/td[3]/table/tbody/tr[3]/td[2]/input",
        "City" => "/html/body/form/table/tbody/tr[2]/td[3]/table/tbody/tr[4]/td[2]/input",
        "State" => "/html/body/form/table/tbody/tr[2]/td[3]/table/tbody/tr[5]/td[2]/input",
        "Zip" => "/html/body/form/table/tbody/tr[2]/td[3]/table/tbody/tr[6]/td[2]/input",
        "Phone" => "/html/body/form/table/tbody/tr[2]/td[3]/table/tbody/tr[7]/td[2]/input"
      }
      
      data.each do |key, value|
        xpath = field_xpaths[key]
        if xpath
          find(:xpath, xpath).set(value)
        else
          raise "Field '#{key}' not mapped to an XPath"
        end
      end
    end
  end
  