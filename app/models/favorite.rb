class Favorite < ActiveRecord::Base
  belongs_to :consumer
  belongs_to :farm

end
