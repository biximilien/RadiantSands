class AddRolesToUserGroups < ActiveRecord::Migration[4.2]
  def change
    change_table :user_groups do |t|
      t.references :role
    end
  end
end
