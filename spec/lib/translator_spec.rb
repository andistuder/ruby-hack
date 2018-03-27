require 'spec_helper'
require 'translator'

RSpec.describe Translator do 
	let(:dummy) { double(:dummy) }
	let(:translation) {double(:translation, translated_text: 'Hola')}
	before do
		allow(Google::Apis::TranslateV2::TranslateService).to receive(:new).and_return(dummy)
		allow(dummy).to receive(:key=)
	end
	it 'works!' do
		expect(Translator.new).to be_a(Translator)
	end
	it 'translated' do
		expect(dummy).to receive(:list_translations).and_return(double(:result, translations: [translation]))
		expect(Translator.new.translate('Hello')).to eq('Hola')
	end
end

