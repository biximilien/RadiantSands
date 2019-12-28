class RenameGcalIdToUid < ActiveRecord::Migration[4.2]
  def change
    rename_column :events, :gcal_id, :uid
    add_index :events, :uid, unique: true
  end
end
