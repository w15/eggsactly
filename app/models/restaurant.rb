class Restaurant < ActiveRecord::Base
  belongs_to :farm
  has_many :dishes
end
