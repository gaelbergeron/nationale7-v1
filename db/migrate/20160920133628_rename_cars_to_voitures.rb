class RenameCarsToVoitures < ActiveRecord::Migration
  def self.up
    rename_table :cars, :voitures
  end

  def self.down
    rename_table :voitures, :cars
  end
end
