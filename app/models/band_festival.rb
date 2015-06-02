class BandFestival < ActiveRecord::Base
  belongs_to :band
  belongs_to :festival
end
