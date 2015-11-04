FactoryGirl.define do
  factory :customer_john, class: Customer do
    first_name "Jane"
    last_name "Doe"
  end

  factory :customer_jane, class: Customer do
    first_name "John"
    last_name "Smith"
  end

end
