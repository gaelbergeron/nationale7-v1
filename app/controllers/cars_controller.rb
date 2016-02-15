class CarsController < ApplicationController
  
  def acheter
    @filterrific = initialize_filterrific(
      Car,
      params[:filterrific],
      :select_options => {
        sorted_by: Car.options_for_sorted_by,
        with_make: Car.options_for_select_make,
        with_fuel_type: ['Diesel', 'Essence']
      }
    ) or return 
    @cars = @filterrific.find.page(params[:page])


    p '*' * 90
    p params
    p @cars
    p '*' * 30 + ' sous @cars et params' + '*' * 30

    respond_to do |format|
      format.html
      format.js
    end
  end

  def vendre
  end

  def details
    @car = Car.find(params[:id])
    @caroptions = CarOption.where(car_id: @car.id)
    @options = Option.where(id: @caroptions.map(&:option_id))
    @photos = Photo.where(car_id: @car.id)
    p @photos
  end

end
