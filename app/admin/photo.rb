ActiveAdmin.register Photo do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :car_id, :description, :picture_url, :comment
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  index do
    id_column
    column :car
    column :description
    column :comment
    column :picture_url
    column :created_at
    column :updated_at
    actions
  end


end
