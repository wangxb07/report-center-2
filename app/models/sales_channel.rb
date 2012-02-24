class SalesChannel < ActiveRecord::Base
  validates :name, :presence => true, :length => 2..30
  validates :comment, :presence => true, :length => { :maximum => 255 }

  has_many :apis, :class_name => "SalesChannelApi", :dependent => :destroy
end
