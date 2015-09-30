guess = 50
number = rand(1..100)
until guess == number
  if guess < number
  then guess = 1.5 * guess
  else guess = (guess)/1.5
  end
end
