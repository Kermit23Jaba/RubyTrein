module FunTranslations
  module Connection
    BASE_URL = 'http://api.funtranslations.com'

    def connection
      Faraday.new(options) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.request :url_encoded
      end
    end
    
    private

    def options
      header = {
        accept: 'application/jsonm ',
        'Content-Type' => 'application/x-www-form-urlencoded',
        user_agent: "fun_translations gem/#{FunTranslations::VERSION}"
      }

      return {
        headers: headers,
        url: BASE_URL
      }
    end
  end
end