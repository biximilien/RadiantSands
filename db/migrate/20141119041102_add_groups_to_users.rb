class AddGroupsToUsers < ActiveRecord::Migration[4.2]
  def change
    change_table :users do |t|
      t.references :user_group
    end
  end
end
