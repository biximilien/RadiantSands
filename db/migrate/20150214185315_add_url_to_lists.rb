class AddUrlToLists < ActiveRecord::Migration[4.2]
  def change
    add_column :lists, :url, :string, null: false, default: '', unique: true
  end
end
