class Farm < ActiveRecord::Base
  has_many :favorites
  has_many :restaurants
end
