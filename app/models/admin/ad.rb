class Admin::Ad < ActiveRecord::Base
  has_one_attached :image
end
