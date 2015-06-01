class CreateBandFestivals < ActiveRecord::Migration
  def change
    create_table :band_festivals, id: false do |t|
      # add references
      t.references  :band
      t.references  :festival

      t.timestamps null: false
    end
  end
end
