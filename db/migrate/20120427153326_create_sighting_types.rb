class CreateSightingTypes < ActiveRecord::Migration
  def change
    create_table :sighting_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
