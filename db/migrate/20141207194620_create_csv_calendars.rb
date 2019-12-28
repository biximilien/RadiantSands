class CreateCsvCalendars < ActiveRecord::Migration[4.2]
  def change
    create_table :csv_calendars do |t|
      t.timestamps
    end
  end
end
