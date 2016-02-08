class CarClient < ActiveRecord::Base
  belongs_to :client
  belongs_to :inspector
  belongs_to :car
end
