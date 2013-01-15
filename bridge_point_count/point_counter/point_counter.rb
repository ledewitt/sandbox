require 'sinatra'
require_relative 'lib/point_counter/deck.rb'

deck = PointCount::Deck.new

get("/") {
  "#{deck.talk}"
}
