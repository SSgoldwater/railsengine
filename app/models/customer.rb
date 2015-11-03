class Customer < ActiveRecord::Base
  scope :random, -> { order('RANDOM()').first }
end
