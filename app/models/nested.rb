class Nested < ActiveRecord::Base
  belongs_to :top
  belongs_to :assign
end
