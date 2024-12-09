Given(/^I am at GMO online site$/) do
    page.driver.browser.manage.window.maximize
    visit ('https://demo.borland.com/gmopost/')
  end
  
When(/^I click the "About the GMO Site" button$/) do
      click_button("bAbout")
  end
  
Then('I see the list of technologies used for the site') do |table|
    expected_technologies = table.raw.flatten
    actual_technologies = page.all('body > div > center > table > tbody > tr:nth-child(2) > td:nth-child(1) > blockquote > ul > li').map(&:text)
    expect(actual_technologies).to match_array(expected_technologies)
  end