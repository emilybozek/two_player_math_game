class Player 
 attr_accessor :lives, :name

 def intitialized(name) 
  @name = name
  @lives = 3
 end
 def lose_life
  @lives = @lives - 1
  puts "You have #{@lives}/3 lives"
 end
 def dead
  @lives < 1
 end 
end