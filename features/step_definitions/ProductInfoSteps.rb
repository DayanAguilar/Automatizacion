Given("the user is on the product page") do
    page.driver.browser.manage.window.maximize
    visit 'https://demo.borland.com/gmopost/products.htm#tents'
  end
  
  Then('the product title should be {string}') do |string|
    title_text = page.find(:xpath, '/html/body/h2[1]/a').text
    expect(title_text).to eq(string)
  end
  
  
  Then('the subtitle should be {string}') do |string|
    subtitle_text = page.find(:xpath, '/html/body/p[1]/font/em').text
    expect(subtitle_text).to eq(string)
  end
  
  Then('the price should be {string}') do |string|
    price_text = page.find(:xpath, '/html/body/div[1]/table/tbody/tr[1]/td[3]').text
    expect(price_text).to eq(string)
  end
  
  Then('the stock quantity should be {string}') do |string|
    stock_text = page.find(:xpath, '/html/body/div[1]/table/tbody/tr[2]/td[2]').text
    expect(stock_text).to eq(string)
  end
  
  Then('the item number should be {string}') do |string|
    item_text = page.find(:xpath, '/html/body/div[1]/table/tbody/tr[3]/td[2]').text
    expect(item_text).to eq(string)
  end
  
  Then('the product description should be {string}') do |string|
    description_text = page.find(:xpath, '/html/body/p[2]').text
    expect(description_text).to eq(string)
  end