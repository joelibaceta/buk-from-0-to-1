class AddMapUrlToMaps < ActiveRecord::Migration[7.0]
  def change
    add_column :maps, :map_url, :string
  end
end
