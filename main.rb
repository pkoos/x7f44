require_relative 'game'
require_relative 'box'
require_relative 'die'

NUM_T = 9
N_DICE = 2
N_SIDES = 6

dice= (1..N_DICE).map { |i| Die.new(N_SIDES, Random.new) }
box= Box.new(NUM_T)
box.set_tiles

game=Game.new(box, dice)

game.start!
game.play until game.over?

puts game.results



















