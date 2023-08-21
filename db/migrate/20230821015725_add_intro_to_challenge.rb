class AddIntroToChallenge < ActiveRecord::Migration[7.0]
  def change
    add_column :challenges, :intro, :string
  end
end
