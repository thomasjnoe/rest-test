require 'rest-client'

puts "Enter a search to examine the results: "
search = gets.chomp

google = "https://www.google.com/search?q="
query = search.split(" ").join("+")
url = google + query

result = RestClient.get url

puts result