class Admin::Banner < ActiveRecord::Base
  has_one_attached :image
end
