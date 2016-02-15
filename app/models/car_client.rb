class CarClient < ActiveRecord::Base
  belongs_to :client
  belongs_to :inspector
  belongs_to :car

  def to_s
  "#{id} - #{client} #{position}"
  end

end
