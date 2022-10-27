# frozen_string_literal: true

require 'pry-byebug'

# class for ascii board
class Board
  def initialize(code)
    @code = code
    @moves = []
  end

  def add_move(move)

  end
end

# class for code
class Code
  def initialize(pegs)
    
  end
end

# class for player
class Player
  def initialize(name)
    @name = name
  end
end

# class for individual move
class Move
  def initialize(code)
    @code
    @feedback = generate_feedback(@code)
  end

  def generate_feedback(code)
    
  end
end

# class for computer ai
class Computer
  attr_reader :code

  def initialize
    @code = generate_code
  end

  def generate_code
    # TODO: make a random generator for the code
    %w[R G B W]
  end
end

# class for game
class Game
  def initialize(name)
    @player = Player.new(name)
    @computer = Computer.new
    @board = Board.new(@computer.code)
    @keep_playing = true
  end

  def self.play
    puts 'What is your name?'
    game = Game.new(gets.chomp)
    while keep_playing
      game.board.add_move(Move.new)
    end
  end
end

Game.play
