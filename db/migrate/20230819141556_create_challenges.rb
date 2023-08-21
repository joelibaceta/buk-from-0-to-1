class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :premise
      t.text :tasks
      t.text :notes

      t.timestamps
    end
  end
end
