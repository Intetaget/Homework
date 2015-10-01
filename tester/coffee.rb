class Coffee 
	def initialize (newname)
		@coffee = newname
		@amount = 5
	end
	def full?
		@amount == 5
	end

	def take_a_sip
		@amount -= 2
	end
end