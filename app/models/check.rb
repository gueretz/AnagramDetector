class Check < ActiveRecord::Base
	def verify_anagram
		dict_text_a, dict_text_b = create_dict(self.text_a), create_dict(self.text_b)

		if dict_text_a == dict_text_b
			self.is_an_anagram = true
		else
			self.is_an_anagram = false
		end
		self.save
	end

	private
	def create_dict text
		dict = {}
		text.downcase.delete(" ").split("").each do | char |
			if dict[char]
				dict[char] += 1
			else
				dict[char] = 1
			end
		end

		return dict
	end

end
