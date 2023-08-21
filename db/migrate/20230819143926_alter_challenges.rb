class AlterChallenges < ActiveRecord::Migration[7.0]
  def change
    change_column :challenges, :id, :string
  end
end
