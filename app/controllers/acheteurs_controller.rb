class AcheteursController < ApplicationController

	def index
	end

  def new
    @acheteur = Acheteur.new
  end

  def create
    @acheteur = Acheteur.new(params[:acheteur])
    @acheteur.request = request
    if @acheteur.deliver
      redirect_to request.referrer, :notice => 'Merci d\'avoir souscrit à nos alertes acheteurs ! Nous espérons vous trouver la perle rare au plus vite !', :class => :success
    else
      redirect_to request.referrer, :alert => 'Oups, on dirait que le site a eu un petit bug ! Nous nous excusons pour la gène occasionnée, vous pouvez nous joindre en tout temps au 07 61 25 80 89' 
    end
  end

end
