class CreateLineups < ActiveRecord::Migration[7.0]
  def change
    create_table :lineups do |t|
      t.references :game, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
