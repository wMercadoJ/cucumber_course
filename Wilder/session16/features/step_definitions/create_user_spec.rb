When /^I send a (GET) request to "(.*?)"$/ do |method, end_point|
  http_request = Rest_service.get_request(method, end_point)
  @http_response = Rest_service.execute_request(@http_connection, http_request)
   @last_json = @http_response.body
end

Then /^I expect HTTP code (\d+)$/ do |http_code|
  expect(@http_response.code).to eql(http_code)
end