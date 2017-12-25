# Create a file named api.rb that pulls the weather from OpenWeather.

# Using only the api json response, please output to the command line:

# the date
# the temperature
# a description of the weather
# Hint: Go to the OpenWeather main page and read the documentation.

# Bonus: Open your file and change the value of the date, temp & 
# condition so when it loads it has the data from the last time 
# the api.rb script was run.


require 'httparty'
require 'time'

url = "http://api.openweathermap.org/data/2.5/weather?q=Miami+Beach,FL&appid=c38d29204353577f04f9a8b861e3c70e"

response = HTTParty.get url

puts response["weather"][0]["description"]
puts response["main"]["temp"]

# puts response["dt"]


current_time = response["dt"]
puts Time.at(current_time)

