class EnterGMOOnlinePage
    include Capybara::DSL
  
    def visit_catalog_page
      page.driver.browser.manage.window.maximize
      visit 'https://demo.borland.com/gmopost/'
    end
  
    def click_about_enter_gmo_online_button
      click_button("bSubmit")
    end
  
    def get_catalog_items
      catalog_table = page.find('body > form > table > tbody > tr:nth-child(2) > td > div > center > table')
      catalog_items = catalog_table.all('tr').map do |row|
        row.all('td').map(&:text).map(&:strip).map { |item| item.gsub(/\s*\$\s*/, '$').gsub(/\n/, ' ') }
      end.flatten.reject(&:empty?)
      catalog_items
    end
  end