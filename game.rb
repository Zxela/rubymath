class Game
  def initialize
    @player1 = Player.new("Alex")
    @player2 = Player.new("Jizelle")
    @turn = 1
    @players = [@player1, @player2]
  end

  def new_turn!
    @players.rotate!
  end

  def game_over?
    @players.any? { |p| p.is_dead? }
  end

  def winner
    @players.detect {|p| !p.is_dead? }
  end


  def run
    while !game_over?
      question = Question.new
      current = @players[0]
      puts
      puts "For #{current.name} #{question.question}"
      result = gets.chomp.to_i
      result == question.answer ? current.win : current.lose
      current.summary
      self.new_turn!
    end
  end
end