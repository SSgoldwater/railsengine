class InvoiceItem < ActiveRecord::Base
  scope :random, -> { order('RANDOM()').first }
end
