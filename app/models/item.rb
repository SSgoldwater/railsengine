class Item < ActiveRecord::Base
  scope :random, -> { order('RANDOM()').first }
end
