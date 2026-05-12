class CreateCollaborators < ActiveRecord::Migration[7.2]
  def change
    create_table :collaborators do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.integer :position, null: false, default: 0

      t.timestamps
    end
  end
end
