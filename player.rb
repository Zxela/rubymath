class Player
  attr_accessor :name, :lives
  attr_reader :score

  def initialize (name, lives = 3, score = 0)
    @name = name
    @lives = lives
    @score = score
  end
    
  def summary 
    puts "#{name}: #{@lives} Lives Left #{@score} points"
  end
  
  def is_dead?
    @lives < 1
  end

  def lose
    puts "wrong answer, lose a life."
    @lives -= 1
  end

  def win
    puts "right answer"
    @score += 1
  end
  
end
