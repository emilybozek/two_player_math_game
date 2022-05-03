require './game.rb'

class Questions 
  def question 
    @number_one = rand(1..10)
    @number_two = rand(1..10)
    puts "What does #{number_one} times #{number_two} equal?"
    answer = gets.chomp.to_i
    if (@number_one * @number_two == answer)
      puts "Correct!"
      true
    else 
      puts "Sorry, that is incorrect! You lose a life."
      false
    end
  end
end