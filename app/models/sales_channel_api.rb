class SalesChannelApi < ActiveRecord::Base
  validates :app_key, :presence => true, :length => 2..255
  validates :app_secret, :presence => true, :length => 2..255
  validates :session_key, :length => 5..255
  validates :url, :length => 5..255

  belongs_to :sales_channel
end
