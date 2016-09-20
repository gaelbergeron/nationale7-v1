class Inspector < ActiveRecord::Base
  # has_many :voitures
  has_many :car_clients

  def to_s
    "#{id} - #{first_name} #{last_name} - #{location_city}"
  end

end
