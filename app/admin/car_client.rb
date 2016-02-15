ActiveAdmin.register CarClient do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :car, :client, :position, :inspector

  index do
    id_column
    column :car
    column :client
    column :position
    column :inspector
    actions
  end


end
