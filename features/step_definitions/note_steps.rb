When(/^I use "(.*?)" API$/) do |url|
  @api_url = "http://localhost:5000#{url}"
end

When(/^send valid attributes$/) do
  @note = Note.new
end

Then(/^response should contains a new id$/) do
  @response = HTTParty.post(@api_url, 
    body: @note.to_json, 
    headers: { 'Content-Type' => 'application/json' }
  )
  expect(@response).to match_response_schema(:note)
end

Then(/^response should contains a list of notes$/) do
  @response = HTTParty.get(@api_url, 
    headers: { 'Content-Type' => 'application/json' }
  )
  expect(@response).to match_response_list(:note)
end

Then(/^status should be "(.*?)"$/) do |code|
  expect(@response.code).to eql(code.to_i)
end

