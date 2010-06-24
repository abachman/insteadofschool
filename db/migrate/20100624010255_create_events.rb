class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :date
      t.integer :place_id
      t.integer :organization_id
      t.decimal :cost, :precision => 21, :scale => 5
      t.string :date
      t.string :name
      t.string :audience
      t.text :description
      t.string :reference

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
