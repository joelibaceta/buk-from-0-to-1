class Player < ApplicationRecord
    has_many :scores

    def ransackable_attributes(auth_object = nil)
        ['name']
    end
end
