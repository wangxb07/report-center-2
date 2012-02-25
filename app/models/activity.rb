class Activity < ActiveRecord::Base
  include ApplicationHelper::Incrementable
  before_validation :auto_increment_id

  validates :increment_id, :presence => true
  validates :name, :presence => true, :length => { :maximum => 255 }
  validates :start_time, :presence => true
  validates :end_time, :presence => true

  belongs_to :sales_channel
  validates_presence_of :sales_channel
end
