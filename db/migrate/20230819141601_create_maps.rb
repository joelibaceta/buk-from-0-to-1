class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.string :name
      t.text :data
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
