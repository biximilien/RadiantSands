class CreateEvents < ActiveRecord::Migration[4.2]
  def change
    create_table :events do |t|
      # Event title
      t.string :name

      # Displayed content or description
      t.text :description

      # Event begins at
      t.datetime :begin_at
      # Event ends at
      t.datetime :end_at

      # Event location
      t.string :location

      # Event type
      t.string :type, null: false, default: 'Event'

      # Price
      t.integer :price

      # Referrer
      t.string :referrer

      # Venue
      t.integer :venue_id

      # EventType
      t.integer :event_type_id

      t.timestamps
    end
  end
end
