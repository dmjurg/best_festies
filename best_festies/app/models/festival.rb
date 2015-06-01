class Festival < ActiveRecord::Base
  has_many :bands_festivals
  has_many :bands, :through => :bands_festivals
  belongs_to :region
end
