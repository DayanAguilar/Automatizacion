When(/^I click the Reset button$/) do
    click_button('bReset')
  end
  
  Then(/^The form looks like the initial table$/) do |table|
    within('body > form > table > tbody > tr:nth-child(2) > td > div > center > table') do
      table.hashes.each do |row|
        product = row['product']
        input = row['input']
        product_row = find('tr', text: product)
        actual_value = product_row.find('input[type="text"]').value
        actual_value == input
     end
    end
  end