=begin
- STATE: Keep track of current question (like state) & current player (like “props” from Quiz class)
- METHOD: Randomly generate addition questions
- METHOD: Evaluate whether a user’s answer is correct
    - If so, print “yes, congrats!”
    - If not, print “nope!” And subtract 1 from their score (stored in player object)
=end

class Turn
  def initialize()
    @num1 = rand(20)
    @num2 = rand(20)
    @total = @num1 + @num2
  end

  def generate_question
    puts "What is #{@num1} plus #{@num2}?"
  end

  def evaluate_answer
    answer = gets.chomp.to_i
    if answer == @total
      puts "Correct!"
    else
      puts "Incorrect :("
    end
  end

  def run_turn
    generate_question
    evaluate_answer
  end

end