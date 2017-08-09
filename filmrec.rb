# Think of a documentary, a drama, a comedy, and a dramedy. Store the titles of these films in variables. Ask the user if they enjoy 1. documentaries 2. dramas 3. comedies. If they answer yes to documentaries, display a message recommending the documentary to them. If they answer no to documentaries but yes to dramas and comedies, recommend the dramedy. If they answer yes to only dramas, recommend the drama. If they say yes to only comedies, recommend the comedy. If they answer no to all three, recommend a good book instead.
#

documentary = "The Murder of Fred Hamption"
drama = "The Godfather"
comedy = "The Big Sick"
dramedy = "In Bruges"
book = "Norwegian Wood"

while true
  puts "Answer with y/n. \nDo you like documentaries?"
  doc_ans = gets.chomp

  if doc_ans == 'y'
    puts "You should watch #{documentary}."
    break
  end

  puts "Do you like dramas?"
  drama_ans = gets.chomp

  puts "Do you like comedies?"
  comedy_ans = gets.chomp


  if drama_ans == 'y' && comedy_ans == 'y'
    puts "You should watch #{dramedy}."
    break
  elsif drama_ans == 'n' && comedy_ans == 'y'
    puts "You should watch #{comedy}."
    break
  elsif drama_ans == 'y' && comedy_ans == 'n'
    puts "You should watch #{drama}."
    break
  elsif drama_ans == 'n' && comedy_ans == 'n'
    puts "Maybe you should read a book! Check out #{book}."
    break
  else
    puts "You answered gave an invalid answer!! Try again."
  end
end
