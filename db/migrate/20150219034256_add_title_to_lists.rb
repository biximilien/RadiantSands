class AddTitleToLists < ActiveRecord::Migration[4.2]
  def change
    add_column :lists, :title, :string, null: false, default: ''
  end
end
