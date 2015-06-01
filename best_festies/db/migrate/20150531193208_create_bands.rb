class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.text :image

      t.timestamps null: false
    end
  end
end
