module Mathgame
  class Player
    @@players_count = 0
    def initialize
      @@players_count += 1
      @name = "Player #{@@players_count}"
      @life = 3
    end

    def lose_life
      @life -= 1
    end

    attr_reader :life, :name

    def score
      "#{@name}: #{@life}/3"
    end

    def self.score players
      "#{players[0].score} vs #{players[1].score}"
    end
  end
end