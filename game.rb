require './questions.rb'

class Game 
  def initialize(player_one, player_two) 
    @player_one = player_one
    @player_two = player_two
    @current_player = @player_one
  end

  def start
    new_turn 
  end 

  def new_turn
    questions = Questions.new
    puts "_________ NEW TURN __________"
    puts " #{@current_player.name}: #{questions.question}"
    if !questions
      @current_player.lose_life
    else 
      puts "You have #{@current_player.lives}/3 lives"
      switch_turn
    end
    start
  end
  
  def switch_turn
    @current_player = @player_one === @current_player ? @player_two: @player_one 
  end

  def end_game 
    puts "#{current_player.name} is dead."
    puts "______________ GAME OVER ______________"
  end

end
