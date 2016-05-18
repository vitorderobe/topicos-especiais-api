# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Game.delete_all

Game.create!([
  { home: "Corinthians", away: "Palmeiras", home_score: "0", away_score: "0", championship: "Brasileirão", place: "Itaquera", date: "25/10/15", time: "16:00"},
  { home: "Miami Heat", away: "Boston Celtics", home_score: "0", away_score: "0", championship: "NBA", place: "American Airlines Arena" ,date: "17/04/16", time: "22:00"}
])