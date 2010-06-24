class Place < ActiveRecord::Base
  belongs_to :audience
  has_many :events
  has_many :organizations

  has_many :categories_places
  has_many :categories, :through => :categories_events
end
