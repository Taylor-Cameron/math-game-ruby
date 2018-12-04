module Mathgame
  class Question

    def initialize
      @first_number = Random.rand(1..20)
      @second_number = Random.rand(1..20)
      @answer = @first_number + @second_number
    end

    def question
      puts "What does #{@first_number} + #{@second_number} equal?"
    end

    def correct_answer?(answer)
      answer == @answer
    end
  end
end