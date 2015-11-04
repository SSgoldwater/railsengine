class Merchant < ActiveRecord::Base
  has_many :items
  has_many :invoices
  scope :random, -> { order('RANDOM()').first }
end
