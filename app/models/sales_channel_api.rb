class SalesChannelApi < ActiveRecord::Base
  validates :name, :presence => true, :length => 2..255
  validates :app_key, :presence => true, :length => 2..255, :uniqueness => true
  validates :app_secret, :presence => true, :length => 2..255
  validates :session_key, :length => { :maximum => 255 }
  validates :url, :length => { :maximum => 255 }

  belongs_to :sales_channel
end
