require 'csv'

count = 1
CSV.foreach('lib/assets/csvs/customers.csv', :headers => true) do |row|
  Customer.create!(row.to_hash)
  puts "Customer ##{count} of 1000"
  count += 1
end

count = 1
CSV.foreach('lib/assets/csvs/invoice_items.csv', :headers => true) do |row|
  InvoiceItem.create!(row.to_hash)
  puts "Invoice Item ##{count} of 21687"
  count += 1
end

count = 1
CSV.foreach('lib/assets/csvs/invoices.csv', :headers => true) do |row|
  Invoice.create!(row.to_hash)
  puts "Invoice ##{count} of 4843"
  count += 1
end

count = 1
CSV.foreach('lib/assets/csvs/items.csv', :headers => true) do |row|
  Item.create!(row.to_hash)
  puts "Item ##{count} of 2483"
  count += 1
end

count = 1
CSV.foreach('lib/assets/csvs/merchants.csv', :headers => true) do |row|
  Merchant.create!(row.to_hash)
  puts "Merchant ##{count} of 100"
  count += 1
end

count = 1
CSV.foreach('lib/assets/csvs/transactions.csv', :headers => true) do |row|
  Transaction.create!(row.to_hash)
  puts "Transaction ##{count} of 5595"
  count += 1
end
