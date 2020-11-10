require './classes/player.rb'
require './classes/question.rb'

class Game

  def initialize
    puts "What is Player 1's name?"
    p1_name = gets.chomp

    puts "What is Player 2's name?"
    p2_name = gets.chomp

    @p1 = Player.new(p1_name)
    @p2 = Player.new(p2_name)
  end

  def turn(player)

    puts "#{player.name}, what is #{Question.num1} plus #{Question.num2}?"
    
    answer = gets.chomp

    if Question.validate_answer(answer)
      puts "✅ Yep!\n"
    else
      puts "❌ Nope!\n"
      player.incorrect
    end
    
  end


  def game
    
    loop do
      turn(@p1)
      if @p1.lives == 0
        break puts "#{@p2.name} wins with a score of #{@p2.lives}"
      end
      turn(@p2)
      if @p2.lives == 0
        break puts "#{@p1.name} wins with a score of #{@p1.lives}"
      end
      puts "🏆 Scores: #{@p1.name}: #{@p1.lives} out of 3. #{@p2.name}: #{@p2.lives} out of 3."
      puts "✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹✹\n👉 Next round:"
    end

    puts "✹✹✹✹✹✹✹✹✹✹✹✹ GAME OVER ✹✹✹✹✹✹✹✹✹✹✹✹"
  end

end