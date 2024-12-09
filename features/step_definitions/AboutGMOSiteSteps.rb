
Given(/^I am at GMO online site$/) do
  @gmo_site_page = AboutGmoSitePage.new
  @gmo_site_page.open
end

When(/^I click the "About the GMO Site" button$/) do
  @gmo_site_page.click_about_button
end

Then('I see the list of technologies used for the site') do |table|
  expected_technologies = table.raw.flatten
  actual_technologies = @gmo_site_page.listed_technologies
  expect(actual_technologies).to match_array(expected_technologies)
end
