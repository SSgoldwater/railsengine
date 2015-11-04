class Customer < ActiveRecord::Base
  has_many :invoices
  scope :random, -> { order('RANDOM()').first }
end
