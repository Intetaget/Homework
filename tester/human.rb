class Human
	def initialize (newname)
		@name = newname
		@allertness = 0.05
	end

	def alertness
		@allertness
	end

	def has_coffee?
	end

	def needs_coffee?
		true
	end
	def buy(coffee)
		@beverage = coffee
	end

	def drink!
		@allertness = @allertness + 0.3
		@beverage.take_a_sip
	end

end