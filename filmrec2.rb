# like part 1, if the inputs are bad then restart the questions.
while true
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

  if (doc_ans.to_i > 5 || doc_ans.to_i < 1)
    puts "You entered something wrong! Please try again."
    redo
    # String.to_i returns 0 when applied to a string that isn't an integer.
    # i.e. this also catches if they enter a non-integer and then it restarts the While.
  end


  # the threshold of 4/5 isn't really relevant given the Stretch Challenge.
  # in all cases, we only care about the maximum value (or values plural if drama = comedy > documentary)
  # the case where the 4/5 threshold is relevant is if drama = comedy = documentary < 4, in which case
  # they don't really like movies and should read a book.
  if doc_ans > drama_ans && doc_ans > comedy_ans
    puts "You like documentaries! You should watch #{documentary}."
    break
  elsif drama_ans > comedy_ans
    puts "You like drams! You should watch #{drama}."
    break
  elsif drama_ans < comedy_ans
    puts "You like comedies! You should watch #{comedy}."
    break
  elsif (drama_ans == comedy_ans && drama_ans != doc_ans)
    puts "You should watch #{dramedy}."
    break
  elsif (doc_ans == drama_ans && drama_ans == comedy_ans && doc_ans.to_i < 4)
    puts "Seems like you don't like movies that much. If you'd like to read a book, I recommend Norwegian Wood."
    break
  end
end
