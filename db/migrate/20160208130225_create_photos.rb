class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :description
      t.string :comment
      t.string :picture_url
      t.string :type
      t.references :car 

      t.timestamps null: false
    end
  end
end
