class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to request.referrer, :notice => 'Merci de nous avoir contacté, nous vous recontactons au plus vite !'
    else
      redirect_to request.referrer, :notice => 'Oups, on dirait que le site a eu un petit bug ! Nous nous excusons pour la gène occasionnée, vous pouvez nous joindre en tout temps au 07 61 25 80 89' 
    end
  end
end