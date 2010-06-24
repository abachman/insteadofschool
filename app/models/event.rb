class Event < ActiveRecord::Base
  belongs_to :place
  belongs_to :organization

  has_many :categories_events
  has_many :categories, :through => :categories_events
end
