class AddNameToUserGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :user_groups, :name, :string
  end
end
