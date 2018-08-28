require_relative "piece.rb"
require_relative "cursor.rb"
require 'colorize' 
require 'colorized_string' 


class Board
  def initialize
    @grid = Array.new(8){ Array.new(8)}
    populate
  end
  
  def populate
    self.grid.each_with_index do |rows, idx|
      if [0, 1, 6, 7].include?(idx)
        (0..7).each do |col|
          self.grid[idx][col] = Piece.new
        end 
      else 
        (0..7).each do |col|
          self.grid[idx][col] = NullPiece.new
         end   
      end 
    end 
    self.grid
  end
  
  def move_piece(start_pos, end_pos)
    row1, col1  = start_pos 
    row2, col2 = end_pos
    
    if @grid[row1][col1].is_a?(NullPiece)
      raise ArgumentError.new('No piece at the start pos!') 
    elsif @grid[row2][col2].is_a?(Piece)
      raise ArgumentError.new('A piece is already at the position!')
    else
      moved_piece = @grid[row1][col1]
      @grid[row1][col1] = NullPiece.new
      @grid[row2][col2] = moved_piece
    end
  end 
  
  # def [](pos)
  #   row, col = pos
  #   @grid[row][col]
  # end
  # 
  # def []=(pos, value)
  #   row, col = pos
  #   @grid[row][col] = value
  # end  
  
  # protected
  attr_accessor :grid
  
end