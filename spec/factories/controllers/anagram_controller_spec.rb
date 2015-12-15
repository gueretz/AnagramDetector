require 'spec_helper'

describe AnagramController, :type => :controller do
	let(:check) { mock_model(Check) }  

	context 'index' do
		before do
			Check.stub(:new) { check }
		end

		it 'assigns check' do
			get :index
			expect(assigns :check).to eq check
		end
 	end

 	context 'verify' do
 		let(:params) {{ check: {text_a: 'text a', text_b: 'text b' }}}
 		before do
 			Check.stub(:create) { check }
 			check.stub(:verify_anagram)
 		end

 		it 'assigns check' do
 			post :verify, params
 			expect(assigns :check).to eq check
 		end
 	end
end