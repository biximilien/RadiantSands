class AddRecurringToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :recurring, :boolean, default: false
  end
end
