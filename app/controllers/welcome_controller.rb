class WelcomeController < ApplicationController

  def index
    # @allCars = Car.all
    @cars = Car.last(3).reverse
    @profile_photos = Photo.where(car_id: @cars.map(&:id)).where(description: 'Profile')
    p "**" * 90
    p @profile_photos
    p "**" * 90
  end

  def commentcamarche
  end

  def prixn7
  end

  def expertisen7
  end

  def apropos
  end

  def faq
  end

  def cgv
  end

  def mentionslegales
  end

end

