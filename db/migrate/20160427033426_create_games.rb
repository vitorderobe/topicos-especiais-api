class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :home
      t.string :away
      t.string :home_score
      t.string :away_score
      t.string :championship
      t.string :place
      t.string :date
      t.string :time

      t.timestamps null: false
    end
  end
end
