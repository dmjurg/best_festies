class Band < ActiveRecord::Base
  has_many :bands_festivals
  has_many :festivals, :through => :bands_festivals
  belongs_to :genre
end
