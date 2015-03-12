class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.integer :tournament_id
      t.string :name
      t.integer :beacon_minor
      t.float :latitude
      t.float :longitude
      t.boolean :deleted

      t.timestamps null: false
    end
  end
end
