class CarsController < ApplicationController
  
  def acheter
    @filterrific = initialize_filterrific(
      Car,
      params[:filterrific],
      :select_options => {
        sorted_by: Car.options_for_sorted_by,
        with_marque: Car.options_for_select_marque,
        with_energie: ['Diesel', 'Essence'], 
        with_prix_n7: [
          ['Max 10 000 Eur', 10000], 
          ['Max 15 000 Eur', 15000], 
          ['Max 20 000 Eur', 20000], 
          ['Max 30 000 Eur', 30000],  
          ['Max 40 000 Eur', 40000], 
          ['Max 50 000 Eur', 50000], 
          ['Max 60 000 Eur', 60000], 
          ['Max 70 000 Eur', 70000], 
          ['Max 80 000 Eur', 80000], 
          ['Max 90 000 Eur', 90000], 
          ['Max 100 000 Eur', 100000], 
          ['Max 500 000 Eur', 500000]]
      }
    ) or return 
    @cars = @filterrific.find.page(params[:page])
    @profile_photos = Photo.where(car_id: @cars.map(&:id)).where(description: 'Profile')
    p "**" * 90
    p @profile_photos
    p "**" * 90


    respond_to do |format|
      format.html
      format.js
    end
  end

  def vendre
    @evaluation = Evaluation.new
  end

  def details
    @contact = Contact.new
    @car = Car.find(params[:id])
    @caroptions = CarOption.where(car_id: @car.id)
    @inspector = Inspector.where(id: @car.inspector_id).first
    @options = Option.where(id: @caroptions.map(&:option_id))
    @photos = Photo.where(car_id: @car.id).where.not(description: 'Profile').order(created_at: :asc)
  end

end
