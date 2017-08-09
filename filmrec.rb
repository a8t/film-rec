documentary = "The Murder of Fred Hampton"
drama = "The Godfather"
comedy = "The Big Sick"
dramedy = "In Bruges"
book = "Norwegian Wood"

# It's a loop so that if they ever give an invalid input,
# it starts the questions again.
while true
  puts "Answer with y/n. \nDo you like documentaries?"
  doc_ans = gets.chomp

  # if they like documentaries, rec the documentary. if the input is bad (neither y or n), start over.
  if doc_ans == 'y'
    puts "You like documentaries! You should watch #{documentary}."
    break
  elsif doc_ans != 'n'
    puts "You gave an invalid answer! Try again."
    redo
  end

  # if they don't like documentaries, ask if they like dramas and/or comedies
  puts "Do you like dramas?"
  drama_ans = gets.chomp

  puts "Do you like comedies?"
  comedy_ans = gets.chomp


  if drama_ans == 'y' && comedy_ans == 'y'
    puts "You like dramedies! You should watch #{dramedy}."
    break
  elsif drama_ans == 'n' && comedy_ans == 'y'
    puts "You like comedies! You should watch #{comedy}."
    break
  elsif drama_ans == 'y' && comedy_ans == 'n'
    puts "You like dramas! You should watch #{drama}."
    break
  elsif drama_ans == 'n' && comedy_ans == 'n'
    puts "Maybe you should read a book! Check out #{book}."
    break
  else
    puts "You answered gave an invalid answer! Try again."
    redo
    # if the inputs were bad, loop back to the beginning.
  end
# end
