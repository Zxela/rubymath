#!/usr/bin/env ruby

require './player.rb'
require './question.rb'
require './game.rb'

game = Game.new

puts "Game has begun!"

game.run

puts "Game has concluded! #{game.winner.name} is the Winner with #{game.winner.score} #{game.winner.score > 1 ? "points!" : "point!"}"