class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :beacon_major
      t.timestamp :started_at
      t.timestamp :ended_at
      t.boolean :deleted

      t.timestamps null: false
    end
  end
end
