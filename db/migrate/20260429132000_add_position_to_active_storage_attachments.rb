class AddPositionToActiveStorageAttachments < ActiveRecord::Migration[7.2]
  def change
    add_column :active_storage_attachments, :position, :integer, null: false, default: 0
    add_index :active_storage_attachments, [:record_type, :record_id, :name, :position],
              name: :index_active_storage_attachments_on_record_name_position
  end
end
