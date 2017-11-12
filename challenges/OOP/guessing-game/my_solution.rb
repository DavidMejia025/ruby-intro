class GuessingGame
  def initialize(answer)
    @answer = answer
 
  end

  def guess(guess) 
    if guess == @answer
      @guess = :correct
    elsif guess< @answer
      @guess = :low
    else
      @guess = :high
    end
  end

  def solved?
    if @guess == :correct
      true
    else
      false
    end
  end
end


# Driver Code
game = GuessingGame.new(10)
p game.solved?   # => false
p game.guess(5)  # => :low
p game.guess(20) # => :high
p game.solved?   # => false
p game.guess(10) # => :correct
p game.solved?   # => true
