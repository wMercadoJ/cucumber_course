require 'net/https'


module Rest_service

  HTTP_TIMEOUT_FOR_RESPONSE = 180
  
  #
  # This method set up a connection 
  #
  def Rest_service.get_connection
      response = nil
      #uri = URI("$app_host")
      uri = URI('https://trello.com')
      #uri = $app_host
      response = Net::HTTP.start(uri.host, uri.port,:use_ssl => true)
      response.read_timeout = HTTP_TIMEOUT_FOR_RESPONSE
      return response
  end
  def Rest_service.get_request(method, url)
    request = nil   
    url =  "#{$app_root}#{url}?key=#{$app_key}&token=#{$app_token}"
    case method
      when "POST"
        request = Net::HTTP::Post.new(url)
      when "PUT"
        request = Net::HTTP::Put.new(url)
      when "DELETE"
        request = Net::HTTP::Delete.new(url)
      when "GET"
        request = Net::HTTP::Get.new(url)
    end
    request.basic_auth($app_user, $app_pass)
   return request
  end
  def Rest_service.execute_request(http_connection, http_request)
    http_response = http_connection.request(http_request)
    return http_response
  end

end