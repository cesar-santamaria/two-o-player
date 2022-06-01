class Game 
  def initialize
    @player1 = Players.new('Player 1')
    @player2 = Players.new('Player 2')
    @current_player = @player1
  end
  
  def start_game
    while @player1.lives? && @player2.lives? do
      question = Questions.new
      question.question(@current_player.player_name)
      players_answer = $stdin.gets.chomp

      if question.check_answer(players_answer.to_i)
        puts "Correct answer!"
      else
        puts "Incorrect..."
        @current_player.lose_life
      end

      sleep(1)
      puts "#{@player1.player_name}: #{@player1.player_lives}/3 vs #{@player2.player_name}: #{@player2.player_lives}/3"

      sleep(1)
      if @current_player == @player1
        @current_player = @player2
      else 
        @current_player = @player1
      end
      
      puts "--- NEXT PLAYERS TURN ---"
    end

    if @player1.no_lives?
      puts "#{@player2.player_name} wins!"
    else
      puts "#{@player1.player_name} wins!"
    end
  puts "--- GAME OVER ---"
  end 
end