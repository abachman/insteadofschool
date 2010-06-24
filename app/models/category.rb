class Category < ActiveRecord::Base
  has_many :categories_events
end
