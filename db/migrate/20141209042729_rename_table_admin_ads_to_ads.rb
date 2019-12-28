class RenameTableAdminAdsToAds < ActiveRecord::Migration[4.2]
  def change
    rename_table :admin_ads, :ads
  end
end
