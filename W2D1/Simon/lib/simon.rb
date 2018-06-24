require 'byebug'
class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
      system('clear')
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence

    puts "Repeat the sequence by entering a letter of the color"
    puts "eg blue yellow red => byr"
    user_color = gets.split('')
    @seq.each_index do |idx|
      if seq[idx][0] != user_color[idx]
        @game_over = true
        break
      end
    end
    sleep 0.25
  end

  def add_random_color
    seq.push(COLORS.sample)
  end

  def round_success_message
    puts "Sequence Length : #{sequence_length}"
    puts "You did it, creating next sequence"
  end

  def game_over_message
    puts "You got through #{@sequence_length - 1} rounds."
    puts "Sequence was #{seq.join(" ")}"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if $PROGRAM_NAME == __FILE__
  # running as script
  s = Simon.new
  s.play
end
