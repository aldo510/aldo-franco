class CreateKinds < ActiveRecord::Migration[5.1]
  def change
    create_table :kinds do |t|
      t.string :name

      t.timestamps
    end

    create_table :buildings_kinds do |t|
      t.belongs_to :kind, index: true
      t.belongs_to :building, index: true

      t.timestamps
    end
  end
end
