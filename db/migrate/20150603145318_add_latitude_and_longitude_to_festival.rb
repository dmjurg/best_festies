class AddLatitudeAndLongitudeToFestival < ActiveRecord::Migration
  def change
    add_column :festivals, :latitude, :float
    add_column :festivals, :longitude, :float
  end
end
