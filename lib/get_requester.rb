
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
   

    # INITIALIZE EACH INSTANCE WITH A URL STRING
    def initialize(url)
        @url = url
    end
    # SENDS A GET REQUEST TO THE URL PASSED, RETURNS THE BODY OF THE RESPONSE
def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body

end

def parse_json
    JSON.parse(get_response_body)
end

end