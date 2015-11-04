class Transaction < ActiveRecord::Base
  belongs_to :merchant
  scope :random, -> { order('RANDOM()').first }
end
