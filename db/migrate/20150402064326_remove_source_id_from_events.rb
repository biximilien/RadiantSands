class RemoveSourceIdFromEvents < ActiveRecord::Migration[4.2]
  def change
  	remove_column :events, :source_id, :integer
  end
end
