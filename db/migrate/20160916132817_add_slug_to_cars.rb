class AddSlugToCars < ActiveRecord::Migration
  def change
    add_column :cars, :slug, :string
    add_index :posts, :slug
  end
end
