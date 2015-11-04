class InvoiceItem < ActiveRecord::Base
  belongs_to :invoice
  belongs_to :item
  scope :random, -> { order('RANDOM()').first }
end
