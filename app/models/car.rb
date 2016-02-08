class Car < ActiveRecord::Base
  has_many :cars_clients
  has_many :photos
  has_many :cars_options
  belongs_to :inspector
end
