class Transaction < ActiveRecord::Base
  belongs_to :invoice
  scope :random, -> { order('RANDOM()').first }
end
