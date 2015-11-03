class Transaction < ActiveRecord::Base
  scope :random, -> { order('RANDOM()').first }
end
