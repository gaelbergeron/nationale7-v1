class AjoutPrenomAutoPlusaCars < ActiveRecord::Migration
  def change
  	add_column :cars, :prenom, :string
  	add_column :cars, :auto_plus, :text
  end
end
