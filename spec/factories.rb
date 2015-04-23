FactoryGirl.define do

  factory :item do
    name "MyString"
    url "MyText"
    description "MyText"
    important false
    list_id 1
  end

  factory :list do
    name "Test1"
    description "Testlist one"
    private false
    user_id 1
  end

  factory :user do
    username "User1"
    email "test@email.com"
    password "Password1"
    password_confirmation "Password1"
  end
end