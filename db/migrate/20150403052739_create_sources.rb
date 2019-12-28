class CreateSources < ActiveRecord::Migration[4.2]
  def change
    create_table :sources do |t|
      t.string :title
      t.string :url
      t.datetime :imported_at
      t.boolean :reimport

      t.timestamps
    end
  end
end
