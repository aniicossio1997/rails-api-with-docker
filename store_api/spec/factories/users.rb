FactoryBot.define do
  factory :user do
    email { "name@MyString.com" }
    age { 18 }
    password_digest { "MyString" }
    type { "test" }
  end
end
