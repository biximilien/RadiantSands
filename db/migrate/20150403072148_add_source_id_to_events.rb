class AddSourceIdToEvents < ActiveRecord::Migration[4.2]
  def change
  	add_column :events, :source_id, :integer
  	remove_column :events, :admin_source_id, :integer
  end
end
