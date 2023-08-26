class Map < ApplicationRecord
  belongs_to :challenge

  def data
    self[:data]
  end
end
