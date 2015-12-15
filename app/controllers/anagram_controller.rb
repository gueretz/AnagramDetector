class AnagramController < ApplicationController
  def index
  	@check=Check.new
  end

  def verify
  	@check=Check.create(check_params)
  	@check.verify_anagram
  end

  def how_to_use
  end

  protected
  	def check_params
  		params.require(:check).permit(:text_a, :text_b)
  	end
end
