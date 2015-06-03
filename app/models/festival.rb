class Festival < ActiveRecord::Base
  has_many :bands_festivals
  has_many :bands, :through => :bands_festivals

  # geocoded_by :location
  # after_validation :geocode, if: ->(obj){ obj.location.present? and obj.location_changed? }
end
