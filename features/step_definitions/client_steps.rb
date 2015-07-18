Given(/^I am in Dashboard$/) do
  visit("http://localhost:5000")
end

When(/^I click in "(.*?)" button$/) do |button|
  click_button(button)
end

Then(/^open "(.*?)" view$/) do |view|
end

Then(/^show "(.*?)" button$/) do |button|
  expect(page.has_content?(button)).to be_truthy
end

