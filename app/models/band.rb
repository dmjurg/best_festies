class Band < ActiveRecord::Base
  has_many :band_festivals
  has_many :festivals, :through => :band_festivals

end
