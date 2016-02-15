class Option < ActiveRecord::Base
  has_many :car_options

  def to_s
    "#{id} #{description}"
  end

end
