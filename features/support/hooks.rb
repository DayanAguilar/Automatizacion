
After do 
    Capybara.current_session.driver.quit
    @end_time = Time.now
    duration = @end_time - @start_time
    puts "Time taken: #{duration} seconds."
    page.driver.browser.manage.delete_all_cookies
end

Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

Before do
  @start_time = Time.now
end
