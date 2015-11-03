class Invoice < ActiveRecord::Base
  scope :random, -> { order('RANDOM()').first }
end
