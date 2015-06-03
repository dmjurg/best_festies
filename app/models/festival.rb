class Festival < ActiveRecord::Base
  has_many :band_festivals
  has_many :bands, :through => :band_festivals

  geocoded_by :location
  after_validation :geocode, if: ->(obj){ obj.location.present? and obj.location_changed? }
end
