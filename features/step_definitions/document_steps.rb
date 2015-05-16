When(/^I use "(.*?)" API$/) do |url|
  @api_url = "http://localhost:5000#{url}"
end

When(/^send valid attributes$/) do
  @document = Document.new
end

Then(/^response should contains a new id$/) do
  @response = HTTParty.post(@api_url, 
    body: @document.to_json, 
    headers: { 'Content-Type' => 'application/json' }
  )
  expect(@response).to match_response_schema(:document)
end

Then(/^response should contains a list of documents$/) do
  @response = HTTParty.get(@api_url, 
    headers: { 'Content-Type' => 'application/json' }
  )
  expect(@response).to match_response_list(:document)
end

Then(/^status should be "(.*?)"$/) do |code|
  expect(@response.code).to eql(code.to_i)
end

