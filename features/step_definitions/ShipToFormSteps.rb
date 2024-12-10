
Then(/^I fill the ship to form with the following data$/) do |table|
  ship_to_form_page = ShipToFormPage.new
  data = table.rows_hash
  ship_to_form_page.fill_form(data)
end
