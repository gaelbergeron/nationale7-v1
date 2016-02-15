ActiveAdmin.register CarOption do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :car_id, :option_id

  index do
    id_column
    column :car
    column :option
    column :created_at
    column :updated_at
    actions
  end


end
