class Car < ActiveRecord::Base
  has_many :car_clients
  has_many :photos
  has_many :car_options
  belongs_to :inspector

  def to_s
  "#{id} - #{make} #{model} - #{year}"
  end

end
