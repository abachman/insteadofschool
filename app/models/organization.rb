class Organization < ActiveRecord::Base
  belongs_to :place
  has_many :events

  has_many :categories_organizations
  has_many :categories, :through => :categories_events
end
