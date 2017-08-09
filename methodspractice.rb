def bonus(life)

  if life < 50
    life
  elsif life >= 100
    life * 1.3
  else
    life * 1.1
  end

end

puts bonus(32)
puts bonus(54)
puts bonus(312)
