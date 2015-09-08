Given(/^I have set a connection to todo\.ly service$/) do
    @http_connection = Rest_service.get_connection
end

When(/^I send a (GET) request to (.*?)$/) do |method, end_point|
    http_request = Rest_service.get_request(method, end_point)    
    @http_response = Rest_service.execute_request(@http_connection, http_request)
    @last_json = @http_response.body
end

Then(/^I expect HTTP code (\d+)$/) do |http_code|
    expect(@http_response.code).to eql(http_code)
end

Then(/^I expect response contents$/) do |data|
    expect(@last_json).to include(data)
end

When(/^I send a (PUT|POST) request to (.*?) with json$/) do |method, end_point, json|
	http_request = Rest_service.get_request(method, end_point)
    http_request.body = json
    @http_response = Rest_service.execute_request(@http_connection, http_request)
    @last_json = @http_response.body
end
