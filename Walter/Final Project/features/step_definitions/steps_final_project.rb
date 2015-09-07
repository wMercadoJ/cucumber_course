Given(/^I have set a connection to todo\.ly service$/) do
  @http_connection = Rest_service.get_connection
end

When(/^I send a (PUT|POST) request to (.*?) with json$/) do |method, end_point, json_text|
	http_request = Rest_service.get_request(method, end_point)
	http_request['content-type'] = 'application/json'
	http_request['accept'] = 'application/json'
	http_request.body = json_text
	@http_response = Rest_service.execute_request(@http_connection, http_request)
	@last_json = @http_response.body
end

When(/^I send a (GET) request to (.*?)$/) do |method, end_point|
	http_request = Rest_service.get_request(method, end_point)
	@http_response = Rest_service.execute_request(@http_connection, http_request)
	@last_json = @http_response.body
end

Then(/^I expect HTTP code (\d+)$/) do |http_code|
	expect(@http_response.code).to eql(http_code)
end

Then(/^I expect JSON equal to$/) do |json_text|
	response_json = JSON_handler.parse_project_response(@last_json)   
	json_text = json_text.gsub!(/\s+/, '')  
	expected_json = JSON.parse(json_text)
	expect(response_json).to eql expected_json
end

Then(/^I expect a list of JSON equal to$/) do |arra_json|
	arra_json = JSON_handler.convert_to_array_json(arra_json.gsub!(/\s+/, ''))
	@last_json = JSON_handler.convert_to_array_json(@last_json)
	@last_json = JSON_handler.parse_projects_reponse(@last_json)
	expect(@last_json).to eql arra_json
end

Then(/^I expect JSON for the Item equal to$/) do |json_text|
	response_json = JSON_handler.parse_item_response(@last_json)   
	json_text = json_text.gsub!(/\s+/, '')  
	expected_json = JSON.parse(json_text)
	expect(response_json).to eql expected_json
end