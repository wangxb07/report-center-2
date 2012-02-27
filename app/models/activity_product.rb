class ActivityProduct < ActiveRecord::Base
  validates :outer_sku, :presence => true, :length => 2..255
  validates :activity_price, :numericality => true

  belongs_to :activity
  # validates_presence_of :activity
end
