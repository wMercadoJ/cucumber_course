#Add the library for HTTP
require 'net/http'


module Rest_service

  HTTP_TIMEOUT_FOR_RESPONSE = 180
  
  #
  # This method set up a connection 
  #
  def Rest_service.get_connection
      http_connection = nil
      http_connection = Net::HTTP.new($app_host)      
      http_connection.read_timeout = HTTP_TIMEOUT_FOR_RESPONSE
      return http_connection
  end

end
