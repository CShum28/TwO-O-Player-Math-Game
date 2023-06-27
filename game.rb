require './player'
require './question'

class Game
  def initialize
    @player_one = Player.new('P1')
    @player_two = Player.new('P2')
    @current_player = @player_one
  end

  def start_game
    while @player_one.lives > 0 && @player_two.lives > 0 do
      question = Question.new
      question.ask(@current_player)
      puts '--New Turn--'
      puts "#{@player_one.name}: #{@player_one.lives}/3 VS #{@player_two.name}: #{@player_two.lives}/3"
      if @current_player == @player_one
        @current_player = @player_two
      else
        @current_player = @player_one
      end
    end
    winner = determine_winner
    puts "#{winner.name} wins! With a score of #{winner.lives}/3"
    puts 'Game over!'
  end

  def determine_winner
    if @player_one.lives > 0
      return @player_one
    else
      return @player_two
    end
  end

end
