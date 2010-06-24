class CreatePlaces < ActiveRecord::Migration
  def self.up
    create_table :places do |t|
      t.string :name
      t.string :address_street
      t.string :address_street_two
      t.string :address_zip
      t.string :location
      t.string :reference
      t.string :audience
      t.text   :description
      t.integer :location_id
      t.decimal :cost, :precision => 21, :scale => 5

      t.timestamps
    end
  end

  def self.down
    drop_table :places
  end
end
