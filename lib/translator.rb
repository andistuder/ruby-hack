require 'google/apis/translate_v2'

class Translator

	def initialize 
		@client = Google::Apis::TranslateV2::TranslateService.new
		@client.key = ENV['API_KEY']
	end

	def translate(input)
		result = @client.list_translations(input, 'es', source: 'en')
		result.translations.first.translated_text
	end

end