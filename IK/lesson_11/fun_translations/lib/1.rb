require 'fun_translations'

client = FunTranslations.client.new
result = client.translate(:pirate, "Hay man")
puts result.translated_text