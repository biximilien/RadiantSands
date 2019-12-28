class AddGcalAndGcalIdToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :gcal, :boolean, null: true, default: nil
    add_column :events, :gcal_id, :string, null: true, default: nil
  end
end
