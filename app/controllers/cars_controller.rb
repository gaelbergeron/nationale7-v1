class CarsController < ApplicationController
  def acheter
    @cars = Car.all 
  end

  def vendre
  end

  def details
    @car = Car.find(params[:id])
    @caroptions = CarOption.where(car_id: @car.id)
    @options = Option.where(id: @caroptions.map(&:id))
  end

end
