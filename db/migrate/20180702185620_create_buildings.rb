class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string      "name"
      t.string      "description"
      t.string      "year"
      t.string      "location"
      t.string      "area"
      t.string      "thumbnail"
      t.text        "images", default: [], array: true
      t.text        "imagesori", default: [], array: true

      t.timestamps
    end
  end
end
