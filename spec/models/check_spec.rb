require 'spec_helper'

describe Check do
  let(:check) { FactoryGirl.build :check }

  describe 'methods' do
  	describe 'verify_anagram' do
  		context 'is an anagram' do
  			it 'sets is_an_anagram to true' do
  				check.verify_anagram
  				expect(check.is_an_anagram).to be true 
  			end
  		end

  		context 'is not an anagram' do
  			before do
  				check.text_a = 'olq teste'
  			end

  			it 'sets is_an_anagram to false' do
  				check.verify_anagram
  				expect(check.is_an_anagram).to be false
  			end
  		end
  	end
  end
end