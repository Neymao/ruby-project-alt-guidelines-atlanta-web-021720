class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :team_id
      t.string :stadium_id
    end
  end
end
