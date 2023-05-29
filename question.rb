class Question
  def initializacion
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask_question
    "whats is #{num1} plus #{num2}?"
  end
  def correct_answer?(answer)
    answer == num1 + num2
  end
end