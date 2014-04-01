class CreateTables < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.timestamps
    end
    create_table :sightings do |t|
      t.timestamps
      t.integer :animal_id
      t.integer :region_id
    end
    create_table :regions do |t|
      t.string :name
      t.timestamps
    end
  end
end
