class AnnoncesController < ApplicationController

	def index
		@voitures_annonces = Car.where(statut: 'Actif')
	end

	def show
		@voiture_annonce = Car.friendly.find(params[:id])
	end

end
