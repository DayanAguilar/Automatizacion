class AboutGmoSitePage
    include Capybara::DSL
  
    def open
      page.driver.browser.manage.window.maximize
      visit('https://demo.borland.com/gmopost/')
    end
  
    def click_about_button
      click_button("bAbout")
    end
  
    def listed_technologies
      page.all('body > div > center > table > tbody > tr:nth-child(2) > td:nth-child(1) > blockquote > ul > li').map(&:text)
    end
  end
  