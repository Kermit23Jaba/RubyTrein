module FunTranslations
  class Client
    include FunTranslations::Request

    def initialize
    end

    #endpoint => :yoda, :pirate, стиль перевода
    def translate(endpoint, text)
      post("/translate/#{endpoint}.json", { text: text })
    end
  end
end