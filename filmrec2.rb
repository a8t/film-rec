# Let's take a different approach to film recommendations: create the same variables containing your potential film recommendations and then ask the user to rate their appreciation for 1. documentaries 2. dramas 3. comedies on a scale from one to five. If they rate documentaries four or higher, recommend the documentary. If they rate documentaries 3 or lower but both comedies and dramas 4 or higher, recommend the dramedy. If they rate only dramas 4 or higher, recommend the drama. If they rate just comedies 4 or higher, recommend the comedy. Otherwise, recommend a good book.
#
# Stretch Challenge
#
# If they didn't rate any genre higher than 3 but they did rate one genre higher than the other two, recommend the film from that genre.


documentary = "The Murder of Fred Hamption"
drama = "The Godfather"
comedy = "The Big Sick"
dramedy = "In Bruges"

puts "Rate from 1-5, 5 being best: \nHow do you rate documentaries?"
doc_ans = gets.chomp

puts "How do you rate dramas?"
drama_ans = gets.chomp

puts "How do you rate comedies?"
comedy_ans = gets.chomp

if doc_ans > drama_ans && doc_ans > comedy_ans
  puts "You should watch #{documentary}."
elsif drama_ans > comedy_ans
  puts "You should watch #{drama}"
elsif drama_ans > comedy_ans
  puts "You should watch #{comedy}"
elsif drama_ans == comedy_ans
  puts "You should watch #{dramedy}"
end
