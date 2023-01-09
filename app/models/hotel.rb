class Hotel < ApplicationRecord
    belongs_to: :city
    has_many: :reservations
end
