class Client < ApplicationRecord
    has_many :pets, dependent: :destroy

    delegate :count, to: :pets, prefix: true
    
    def to_s
        name
    end
    def maximum_weight
        pet.pet_histories.maximum(:weight)
    end

    def maximum_height
        pet.pet_histories.maximum(:height)
    end
end
