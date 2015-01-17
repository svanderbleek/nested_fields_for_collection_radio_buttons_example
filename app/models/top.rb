class Top < ActiveRecord::Base
  has_many :nesteds
  accepts_nested_attributes_for :nesteds
end
