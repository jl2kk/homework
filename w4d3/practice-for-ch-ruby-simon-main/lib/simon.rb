class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1 
    @seq = []
    @game_over = false 
  end

  def play
    while !game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    until game_over
      sequence_length +=1 
      round_success_message
    end 
  end

  def show_sequence
    add_random_color
    seq.each do |i|
      p i 
    end 
  end

  def require_sequence
  end

  def add_random_color
    seq.append(COLORS.sample)
    self.sequence_length +=1 
  end

  def round_success_message
    p "Round passed"
  end

  def game_over_message
    p "Game over"
  end

  def reset_game
    self.sequence_length = 1 
    self.game_over = false 
    self.seq = []
  end
end