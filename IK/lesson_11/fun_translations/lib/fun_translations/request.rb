module FunTranslations
  module Request
    include FunTranslations::Connection
    
    def post(path, params = {})
      #path --> translate/yoda.json
      #params --> {text: "Hay man!"}
      respond_with(
      connection.post(path, params) #строка которая похажа на хэш, но не хэш
      #"text=Hay + man"
      )
    end
    pirate

    def respond_with(raw_response)
      body = raw_response.body.empty? ?
        raw_response.body : JSON.parse(raw_response.body)
      body['contents']
    end
  end
end
