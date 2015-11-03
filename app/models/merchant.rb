class Merchant < ActiveRecord::Base
  scope :random, -> { order('RANDOM()').first }
end
