class Route
	attr_reader :points

	def initialize (start,finish)
		@start = start
		@finish = finish
		@points = []
	end

    def add (points)
	  @points.push(point)
    end

    def remove (points)
	  @points.delete_at(-1)
    end

    def list
	  puts "Список станций : #{@start}, #{@points}, #{@finish}"
    end
end