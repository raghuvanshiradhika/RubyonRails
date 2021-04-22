class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  item_nums = Array[2,3,4]
end
