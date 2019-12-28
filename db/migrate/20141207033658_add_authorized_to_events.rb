class AddAuthorizedToEvents < ActiveRecord::Migration[4.2]
  def change
    add_column :events, :authorized, :boolean, default: nil
  end
end
