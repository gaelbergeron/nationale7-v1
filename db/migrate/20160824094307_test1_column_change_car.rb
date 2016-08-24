class Test1ColumnChangeCar < ActiveRecord::Migration
  def change
    rename_column :cars, :make, :marque
  end
end
