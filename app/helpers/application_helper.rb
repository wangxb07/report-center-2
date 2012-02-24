# -*- coding: utf-8 -*-
module ApplicationHelper

  module Incrementable
    # = Increment
    #before_create :auto_increment_id

    # 各种自增ID的生成
    def auto_increment_id
      # 获取当期的对象是否在system_increment中有对应记录
      system_increment = SystemIncrement.find_by_for_class(self.class.to_s)
      if system_increment.nil?
        system_increment = SystemIncrement.create(:for_class => self.class.to_s)
      end
      # 获取起点与步长
      system_increment.starting += system_increment.step
      # 生成新的记录到对象的熟悉，如果属性不存在抛出异常
      self.increment_id = system_increment.starting
      system_increment.save
    end
  end

end
