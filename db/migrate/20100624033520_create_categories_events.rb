class CreateCategoriesEvents < ActiveRecord::Migration
  def self.up
    create_table :categories_events do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :categories_events
  end
end
