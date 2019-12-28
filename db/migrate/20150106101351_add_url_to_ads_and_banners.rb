class AddUrlToAdsAndBanners < ActiveRecord::Migration[4.2]
  def change
    add_column :ads, :url, :string
    add_column :banners, :url, :string
  end
end
