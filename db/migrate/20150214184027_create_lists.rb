class CreateLists < ActiveRecord::Migration[4.2]
  def change
    create_table :lists do |t|

      t.timestamps
    end
  end
end
