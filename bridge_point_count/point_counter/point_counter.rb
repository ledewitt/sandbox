require 'sinatra'
require_relative 'lib/point_counter'

deck = PointCount::Deck.new

get("/") {
  "#{deck.talk}"
}
