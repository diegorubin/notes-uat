Given(/^I am in Dashboard$/) do
  visit("http://localhost:8000")
end

When(/^I click in "(.*?)" button$/) do |button|
  click_button(button)
end

Then(/^a dialog should open$/) do
  expect(page.has_content?('Fechar')).to be_truthy
  expect(page.has_content?('Salvar')).to be_truthy
end
