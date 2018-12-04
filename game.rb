module Mathgame
  class Game
    def initialize
      @players = []
      @players << Player.new << Player.new
      puts @players
      @game_over = false
      @number_of_players = 2
    end

    def start
      puts 'Starting Game...'
      current_player_count = 0
      while(!@game_over) do
        current_player = @players[current_player_count]
        next_player_count = (current_player_count + 1) % @number_of_players
        next_player = @players[next_player_count]
        Turn.new current_player
        puts Player.score @players
        if (current_player.life == 0)
          @game_over = true
          puts "#{next_player.name} wins with a score of #{next_player.life}/3"
        end
        current_player_count = next_player_count
      end
      puts '----- GAME OVER -----'
      puts 'Goodbye'
    end
  end
end