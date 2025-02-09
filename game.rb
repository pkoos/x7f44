class Game

  WELCOME_MESSAGE = "Welcome to Shut da Box!"
  WIN_MESSAGE = "You shut da box!"
  LOSE_MESSAGE = "Game over, you did not shut da box."
  
  attr_reader :box, :dice

  def initialize(box, dice)
    @box = box
    @dice = dice
  end

  def over?
    box.shut? || box.can_flip_for?(dice.map(&:value).reduce(:+))
  end

  def start!
    puts WELCOME_MESSAGE
    prepare_next_round
  end

  def prepare_next_round
    dice.each(&:roll!)
  end

  def display_dice
    print "You rolled: "
    dice.each do |die|
      print "#{die} "
    end
    puts "\n"
  end

  def collect_input
    puts "Which tiles would you like to flip (separate by spaces): "
    tiles_to_flip = gets.chomp
  end

  def play
    print "#{box}"
    display_dice
    collect_input
    prepare_next_round
  end

  def results
    box.shut? ? WIN_MESSAGE : LOSE_MESSAGE
  end

end
