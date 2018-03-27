# a simple ruby task, run like this:
# API_KEY=<MYKEY> bundle exec ruby task.rb Hello World

require_relative 'lib/translator'

input = ARGV.join(" ")

translator = Translator.new

puts translator.translate(input)




