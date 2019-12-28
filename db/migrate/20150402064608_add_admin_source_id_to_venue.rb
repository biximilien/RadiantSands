class AddAdminSourceIdToVenue < ActiveRecord::Migration[4.2]
  def change
  	add_column :venues, :admin_source_id, :integer
  end
end
