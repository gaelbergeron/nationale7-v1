class AnnoncesController < ApplicationController

	def index
		@voitures_annonces = Car.where(statut: 'Actif').sort_by(&:created_at)
	end

	def show
		@voiture_annonce = Car.friendly.find(params[:id])
    @caroptions = CarOption.where(car_id: @voiture_annonce.id)
    @options = Option.where(id: @caroptions.map(&:option_id))
	end

end
