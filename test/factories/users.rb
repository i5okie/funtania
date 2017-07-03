FactoryGirl.define do
  factory :fakeuser do
    name Faker::Name.name
    email "dope email bro"
    password "123"
  end

  factory :gooduser do
    name Faker::Name.name
    email Faker::Internet.safe_email #=> "christelle@example.org"
    password Faker::Internet.password(10, 20, true)
    # trait :admin do
    #   role 'admin'
    # end
  end
end
