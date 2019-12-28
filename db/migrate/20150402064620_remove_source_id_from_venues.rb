class RemoveSourceIdFromVenues < ActiveRecord::Migration[4.2]
  def change
  	remove_column :venues, :source_id, :integer
  end
end
