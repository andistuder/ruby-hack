# a simple ruby task, run like this:
# API_KEY=<MYKEY> bundle exec ruby task.rb 

require 'google/apis/translate_v2'

translate = Google::Apis::TranslateV2::TranslateService.new
translate.key = ENV['API_KEY']
result = translate.list_translations('Hello world!', 'es', source: 'en')
puts result.translations.first.translated_text
