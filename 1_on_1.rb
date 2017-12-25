directions = ["north", "south", "east", "west"]
p directions [3]

compass = {:n=>"north", :s=>"south", :e=>"east", :w=>"west"}
p compass [:n]

class Direction
	attr_accessor :abbreviation, :direction_name

	def initialize (abbreviation, direction_name)
       @abbreviation = abbreviation
       @direction_name = direction_name
	end
	
end	

dir = Direction.new("n", "North")
p dir, dir.abbreviation, dir.direction_name	


class Compass < Direction
   attr_reader :directions

   def initialize ()
      @directions = [Direction.new("n", "North"), Direction.new("e", "East"), Direction.new("s", "South"),Direction.new("w", "West") ]
   end	

   def to_s
      return "compass"
   end	

end

my_compass = Compass.new
p 'this is' 
p my_compass.directions
# my_compass.directions = []


require 'sinatra'

get '/' do

	direction = params["direction"]

	if direction == "n"
		return "North"

	elsif direction == "e"
	    return "East"

	elsif direction == "s"
	    return "South"

	elsif direction == "w"
	    return "West"

	else
	    return "nil"

	end
end	   


return Compass.new.to_s + output



















