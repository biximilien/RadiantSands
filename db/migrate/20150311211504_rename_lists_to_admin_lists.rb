class RenameListsToAdminLists < ActiveRecord::Migration[4.2]
  def change
    rename_table :lists, :admin_lists
  end
end
