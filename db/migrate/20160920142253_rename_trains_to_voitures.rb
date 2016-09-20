class RenameTrainsToVoitures < ActiveRecord::Migration
  def self.up
    rename_table :trains, :voitures
  end

  def self.down
    rename_table :voitures, :trains
  end
end
