class CreateCategoriesOrganizations < ActiveRecord::Migration
  def self.up
    create_table :categories_organizations do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :categories_organizations
  end
end
