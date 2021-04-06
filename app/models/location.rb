class Location < ApplicationRecord
    attr_accessor :address, :latitude, :longitude
    geocoded_by :address
    after_validation :geocode, if: :any_address_changed?
    belongs_to :user

    private

        def any_address_changed?
            address_changed? || latitude_changed? || longitude_changed?
        end

end
