class Item < ActiveRecord::Base
  belongs_to :merchant 
  has_many :invoices
  scope :random, -> { order('RANDOM()').first }
end
