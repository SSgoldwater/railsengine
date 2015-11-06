class Merchant < ActiveRecord::Base
  has_many :items 
  has_many :invoices
  has_many :invoice_items, through: :invoices
  scope :random, -> { order('RANDOM()').first }

  def total_revenue
    self.invoice_items.sum('quantity * unit_price')
  end

end
