class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
