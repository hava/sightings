class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.date :date
      t.references :sighting_type
      t.references :location
      t.string :sighter
      t.text :description
      t.text :comment

      t.timestamps
    end
    add_index :sightings, :sighting_type_id
    add_index :sightings, :location_id
  end
end
