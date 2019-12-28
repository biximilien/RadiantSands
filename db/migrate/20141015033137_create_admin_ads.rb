class CreateAdminAds < ActiveRecord::Migration[4.2]
  def change
    create_table :admin_ads do |t|
      t.timestamps
    end
  end
end
