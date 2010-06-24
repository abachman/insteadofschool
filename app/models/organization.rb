class Organization < ActiveRecord::Base
  belongs_to :place
  has_many :events
end
