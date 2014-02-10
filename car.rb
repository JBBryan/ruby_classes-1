class Car

	def get_info
		"I'm a car. I've driven #{@distance} miles, and have #{@fuel} gallons of gas left."
	end

	def initialize
		puts "The initialize method is running automatically."
		@fuel = 10
		@distance = 0
	end

	def drive(miles)
		
		if @fuel - (miles / 20.0) > 0
			@fuel = @fuel - (miles / 20.0)
			@distance = @distance + miles
		else
			@distance = @fuel * 20
			@fuel = 0
			puts "You ran out of gas! Fill up before driving further!"
		end
	end

	def fill_up
		gallons = (10 - @fuel)
		puts "You need #{gallons} gallons for a full tank. At $3.50/gallon it will cost $#{gallons * 3.5} to fill all the way up. How much many dollars would you like to fill up with?"
		@cash = gets.chomp.to_i
		@fuel = @fuel + (@cash / 3.5)
		puts "You added #{@fuel} gallons for $#{@cash}."
	end

end