class Order < ActiveRecord::Base
  include ApplicationHelper::Incrementable
  before_validation :auto_increment_id

  validates :increment_id, :presence => true
  validates :customer_name, :presence => true, :length => { :maximum => 255 }
  validates :total_amount, :presence => true, :numericality => true

  validates :receiver_name, :presence => true, :length => 2..255
  validates :receiver_state, :presence => true, :length => 2..255
  validates :receiver_city, :presence => true, :length => 2..255
  validates :receiver_district, :presence => true, :length => 2..255
  validates :receiver_address, :presence => true, :length => 2..255

  validates :outer_iid, :presence => true, :length => 2..255

  belongs_to :sales_channel_api
  belongs_to :activity

  validates :sales_channel_api, :presence => true
end
