#Add the library for HTTP
require 'net/http' #to work with rest services

module Rest_service

  HTTP_TIMEOUT_FOR_RESPONSE = 180 # seconds intentar conectarse al host
  
  #
  # This method set up a connection 
  #
  def Rest_service.get_connection
      http_connection = nil
      http_connection = Net::HTTP.new($app_host, nil, $app_proxy, $app_proxy_port)  #creation of connection    
      http_connection.read_timeout = HTTP_TIMEOUT_FOR_RESPONSE
      return http_connection
  end
#url service name

def Rest_service.get_request(method, url)
    request = nil   
    url =  $app_root + url
   
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
    #If any basic authorization is required it should be define into the module with the syntaxes :
    request.basic_auth($app_user,$app_pass)  
   return request
end

def Rest_service.execute_request(http_connection, http_request)
    http_response = http_connection.request(http_request)
    return http_response
end

end


