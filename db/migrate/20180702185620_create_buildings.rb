class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string "name"
      t.integer "kind", nil: false
      t.string "description"
      t.string "year"
      t.string "location"
      t.string "area"
      t.text "images", default: [], array: true

      t.timestamps
    end
  end
end
