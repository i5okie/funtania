FactoryGirl.define do
  factory :baduser do
    name Faker::Name.name
    email "dope email bro"
    password "123"
  end
  
  factory :user do
    name Faker::Name.name
    email Faker::Internet.safe_email #=> "christelle@example.org"
    password Faker::Internet.password(10, 20, true)
    # trait :admin do
    #   role 'admin'
    # end
  end
end
