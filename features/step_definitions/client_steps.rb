Given(/^I am in Dashboard$/) do
  visit("http://localhost:8000")
end

When(/^I click in "(.*?)" button$/) do |button|
  click_button(button)
end

Then(/^open "(.*?)" view$/) do |view|
  expect(page.has_content?(view)).to be_truthy
end

