class Category < ActiveRecord::Base
  has_many :categories_events
  has_many :events, :through => :categories_events

  has_many :categories_places
  has_many :places, :through => :categories_places

  has_many :categories_organizations
  has_many :organizations, :through => :categories_organizations
end
