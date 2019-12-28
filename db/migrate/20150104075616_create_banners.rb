class CreateBanners < ActiveRecord::Migration[4.2]
  def self.up
    create_table :banners
  end

  def self.down
    drop_table :banners
  end
end
