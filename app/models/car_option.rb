class CarOption < ActiveRecord::Base
  belongs_to :option
  belongs_to :car 
end
