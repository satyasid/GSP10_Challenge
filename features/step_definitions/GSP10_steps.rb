 
Given(/^I am on the Google homepage$/) do
    visit 'http://www.google.com'
end

Then(/^I will search for "(.*?)"$/) do |searchText|
    page.fill_in 'gbqfq', :with => 'People10 Technosoft'
end

	 
Then(/^I should see "(.*?)"$/) do |expectedText|
    page.should have_content(expectedText)
end

# Then(/^I will search for "(.*?)"$/) do |searchText|
#    page.fill_in 'gbqfq', :with => 'Request'
# end

#  Then(/^I should see "(.*?)"$/) do |expectedText|
#    page.should have_content('Response')
# end
