class Inspector < ActiveRecord::Base
  has_many :cars
  has_many :cars_clients
end
