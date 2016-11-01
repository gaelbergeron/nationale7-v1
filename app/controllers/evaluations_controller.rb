class EvaluationsController < ApplicationController
  def new
    @evaluation = Evaluation.new
  end

  def create
    @evaluation = Evaluation.new(params[:evaluation])
    @evaluation.request = request
    if @evaluation.deliver
      redirect_to request.referrer, :notice => 'Merci de nous avoir contacté, nous vous recontacterons dans les plus brefs délais !'
    else
      redirect_to request.referrer, :alert => 'Oups, on dirait que le site a eu un petit bug ! Nous nous excusons pour la gène occasionnée, vous pouvez nous joindre en tout temps au 07 61 25 80 89'
    end
  end

end