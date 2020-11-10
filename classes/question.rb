class Question

  attr_accessor :num1, :num2

  def self.num1
    @num1 = rand(20)
  end

  def self.num2
    @num2 = rand(20)
  end

  def self.validate_answer(answer)
    answer.to_i == @num1 + @num2
  end

end