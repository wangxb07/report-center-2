class Activity < ActiveRecord::Base

  include ApplicationHelper::Incrementable
  before_validation :auto_increment_id

  validates :increment_id, :presence => true
  validates :name, :presence => true, :length => { :maximum => 255 }
  validates :start_time, :presence => true
  validates :end_time, :presence => true

  belongs_to :sales_channel
  has_many :products, :dependent => :destroy, :class_name => "ActivityProduct"

  accepts_nested_attributes_for :products, :allow_destroy => true, :reject_if => :reject_products

  validates_presence_of :products, :sales_channel

  def reject_products(attributed)
    return false if attributed['outer_sku'].blank?
  end
end
