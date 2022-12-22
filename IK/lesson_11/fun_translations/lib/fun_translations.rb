require 'faraday'
require 'json'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.setup
 
module FunTranslations
  def self.client
    FunTranslations::Client.new
  end
end
 