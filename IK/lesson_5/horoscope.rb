# tweets = raw_tweets[:data].map { |t| t[:text].gsub(/\A\d{2}\.\d{2}\n/, '').split(': ') }.to_h

# zodiac_name = tweets.keys.map(&:downcase)
# puts 'Введите свой знак зодиака:'
# zodiac = gets.strip.downcase
# puts zodiac_name.include?(zodiac) ? tweets.transform_keys(&:downcase)[zodiac] : 'Введите верное имя знака зодиака!'

arr = %w[av df gf]
p arr.map(&:capitalize) #это из функционального програмирования равносильно такой записи arr.map { |i| i.upcase }