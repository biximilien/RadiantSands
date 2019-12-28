class RenameCsvCalendarsToAdminCsvCalendars < ActiveRecord::Migration[4.2]
  def change
    rename_table :csv_calendars, :admin_csv_calendars
  end
end
