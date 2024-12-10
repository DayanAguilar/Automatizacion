# features/step_definitions/ResetFormSteps.rb

When(/^I click the Reset button$/) do
  @reset_page = ResetFormPage.new
  @reset_page.click_reset_button
end

Then(/^The form looks like the initial table$/) do |table|
  @reset_page.validate_form(table)
end
