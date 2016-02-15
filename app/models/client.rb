class Client < ActiveRecord::Base
  has_many :car_clients

  def to_s
  "#{id} - #{first_name} #{last_name} - #{city}"
  end

end
