class Inspector < ActiveRecord::Base
  has_many :cars
  has_many :car_clients

  def to_s
    "#{id} - #{first_name} #{last_name} - #{location_city}"
  end

end
