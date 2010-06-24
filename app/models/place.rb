class Place < ActiveRecord::Base
  belongs_to :audience
  has_many :events
  has_many :organizations
end
