class AddAdminSourceIdToEvents < ActiveRecord::Migration[4.2]
  def change
  	add_column :events, :admin_source_id, :integer
  end
end
