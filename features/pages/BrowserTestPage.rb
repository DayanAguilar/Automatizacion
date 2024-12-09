class BrowserTestPage
    include Capybara::DSL
  
    def initialize
      @browser_test_button = "bBrowserTest"
      @differences_table_selector = 'body > div > center > table > tbody > tr > td:nth-child(2) > table'
    end
  
    def open
      page.driver.browser.manage.window.maximize
      visit('https://demo.borland.com/gmopost/')
    end
  
    def click_browser_test_button
      click_button(@browser_test_button)
    end
  
    def get_differences_list
      table_text = page.find(@differences_table_selector).text.strip
      table_text.split("\n").map(&:strip)
    end
  end