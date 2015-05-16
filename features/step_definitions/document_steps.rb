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

Then(/^status should be "(.*?)"$/) do |arg1|
  expect(@response.code).to eql(201)
end

