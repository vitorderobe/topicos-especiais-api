# encoding: utf-8

FactoryGirl.define do
  
  factory :first_game, class: Game do |f|
    f.id           1
    f.home         "Corinthians"
    f.away         "Palmeiras"
    f.home_score   "0"
    f.away_score   "0"
    f.championship "Brasileirão"
    f.place        "Itaquera"
    f.date         "25/10/15"
    f.time         "16:00"
  end

  factory :second_game, class: Game do |f|
    f.id           2
    f.home         "Miami Heat"
    f.away         "Boston Celtics"
    f.home_score   "0"
    f.away_score   "0"
    f.championship "NBA"
    f.place        "American Airlines Arena"
    f.date         "17/04/16"
    f.time         "22:00"
  end

  factory :third_game, class: Game do |f|
    f.id           3
    f.home         "Steelers"
    f.away         "Patriots"
    f.home_score   "0"
    f.away_score   "0"
    f.championship "NFL"
    f.place        "Heinz Field"
    f.date         "13/05/16"
    f.time         "21:00"
  end  

end