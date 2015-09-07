
Given (/^I have set a connection to trello.com service$/) do 
  @http_connection = Rest_service.get_connection
end

When (/^I send a (GET) request to (.*?)$/) do |method, end_point|
  http_request = Rest_service.get_request(method, end_point)
  http_request['content-type'] = 'application/json'
  http_request['accept'] = 'application/json'
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  # @last_json = JSON.parse(@http_response.body)
  @last_json = @http_response.body
end

When (/^I send a (PUT|POST) request to (.*?) with json$/) do |method, end_point, json_text|
  http_request = Rest_service.get_request(method, end_point)
  http_request['content-type'] = 'application/json'
  http_request['accept'] = 'application/json'
  http_request.body = json_text
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  # @last_json = JSON.parse(@http_response.body)
  @last_json = @http_response.body
end

When (/^I send a (DELETE) request to (.*)$/) do |method, end_point|

  end_point = end_point + @id_org_name
  http_request = Rest_service.get_request(method, end_point)
  http_request['content-type'] = 'application/json'
  http_request['accept'] = 'application/json'
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body
  # @last_json = JSON.parse(@http_response.body)

end

Then(/^I get the id "(.*?)" for organization as "(.*?)"$/) do |org_path, org_displayName|
  @last_json = JSON.parse(@http_response.body)
  @last_json.each do |hash|
    if hash["displayName"].to_s ==  org_displayName.to_s
      @id_org_name = hash[org_path]
    end
  end
end
Then (/^I expect HTTP code (\d+)$/) do |http_code|
  expect(@http_response.code).to eql(http_code)
end

Then (/^I expect JSON equal to$/) do |json_text|
  expect(@last_json).to be_json_eql json_text
end

Then (/^I expect JSON list not empty$/) do
  @last_json = JSON.parse(@http_response.body)
  expect(@last_json).not_to be_empty
end

Then (/^I expect JSON at "(.*?)" should be "(.*?)"$/) do |json_path, json_value|
  @last_json = JSON.parse(@http_response.body)
  value_in_path = @last_json[json_path].to_s
  expect(value_in_path).to eq json_value.to_s
end
