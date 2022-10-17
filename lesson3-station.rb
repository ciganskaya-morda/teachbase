class Station
	attr_reader :trains, :name

	def initialize(name)
		@name = name
        @trains = []
	end

	def take(train) 
		@trains.push(train)
	end

	def amount
		@trains.map(&:number)
	end

	def train_types
		freight = []
		passenger = []
		@trains.each do |train|
			if train.type == freight
				freight.push(train)
			else
				passenger.push(train)
			end

	end

	def depart(train)
		@trains.delete(train)
	end
end