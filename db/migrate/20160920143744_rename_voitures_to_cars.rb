class RenameVoituresToCars < ActiveRecord::Migration
  def self.up
    rename_table :voitures, :cars
  end

  def self.down
    rename_table :cars, :voitures
  end
end
