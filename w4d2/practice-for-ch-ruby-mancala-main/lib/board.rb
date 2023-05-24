class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(13) {[]}
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if cups[start_pos].empty? 
      return false 
    end 
    if start_pos > 13 || start_pos < 1 
      return false 
    end 


  end

  def make_move(start_pos, current_player_name)
    move = cups[start_pos]
    cups[start_pos] = []
    index = start_pos

    until move.empty?
      index += 1 
      cups[index].append(move.shift)
    end 
      
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..6).all? {|i| cups[i].empty?}
  end

  def winner
    return cups[6].length < cups[12].length
  end
end