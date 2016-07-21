require_relative 'player'

class Game

  attr_reader   :player_1, :player_2
  attr_accessor :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    if @current_turn == player_1
      @player_1 = @player_2
      @player_2 = @current_turn
    else
      @player_2 = @player_1
      @player_1 = @current_turn
    end
  end

end
