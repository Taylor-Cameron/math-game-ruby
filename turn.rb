module Mathgame
  class Turn

    def initialize (player)
      puts "-----New Turn------"
      new_question = Question.new
      puts "#{player.name}: #{new_question.question}"
       @answer = gets.chomp.to_i
      if new_question.correct_answer? @answer
        puts "#{player.name}: CORRECT ANSWER!"
      else
        player.lose_life
        puts "#{player.name}: WRONG ANSWER, YOU LOST A LIFE!"
      end
    end

  end
end

