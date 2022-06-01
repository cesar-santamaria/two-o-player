class Questions
  attr_accessor :num_1 , :num_2

  def initialize
    @num_1 = rand(1...20)
    @num_2 = rand(1...20)
    @sum = @num_1 + @num_2
  end

  def question (current_player)
    puts "#{current_player}: What is the sum of #{num_1} + #{num_2}?"
  end

  def player_answer
    puts ">" 
    answer = $stdin.gets.chomp
  end

  def check_answer(answer)
    answer == @sum
  end
  
end


