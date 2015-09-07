require 'singleton'
require 'json'

class GetToken
  include Singleton
  attr_accessor:token

  def initialize
    http_connection=Rest_service.get_connection
    http_request = Rest_service.get_request($GET, "/authentication/token.json")
    http_request[$AUTHORIZATION] = $app_authorization_base64
    http_response = Rest_service.execute_request(http_connection, http_request)
    json_responce = JSON.parse(http_response.body)
    @token=json_responce[$TOKENSTRING]
  end
end

Given(/^I have set a connection to todo\.ly service$/) do
  @http_connection = Rest_service.get_connection
<<<<<<< HEAD
  @token_value= GetToken.instance 
  puts "TOKEN: #{@token_value.token}" 
end
=======
end



# When(/^I send a POST request to \/user\.json with json$/) do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end
>>>>>>> 760361698b033fc984aa578b6c5ac90a154241f3

When (/^I send a (PUT|POST) request to (.*?) with json$/) do |method, end_point, json_text|
  http_request = Rest_service.get_request(method, end_point)
  http_request.body = json_text
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body
<<<<<<< HEAD
   
end
=======
end


# Then(/^I expect HTTP code (\d+)$/) do |arg1|
#   pending # Write code here that turns the phrase above into concrete actions
# end
>>>>>>> 760361698b033fc984aa578b6c5ac90a154241f3

When (/^I send a (GET) request to "(.*?)"$/) do |method, end_point|
  http_request = Rest_service.get_request(method, end_point)
  http_request[]=
  @http_response = Rest_service.execute_request(@http_connection, http_request)
  @last_json = @http_response.body
end

Then (/^I expect HTTP code (\d+)$/) do |http_code|
  expect(@http_response.code).to eql(http_code)
end

Then (/^I expect JSON equal to$/) do |json_text|
  expect(@last_json).to be_json_eql json_text
end
