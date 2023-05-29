class Player
  attr_reader :lives, :score 

  def initializacion(lives=3)
    @score = 0
    @lives = 3
  end

  def decrement_lives
    @lives -= 1
  end

  def increment_score
    @score +=1
  end

  def lives_remaining
    @lives
  end
    
end