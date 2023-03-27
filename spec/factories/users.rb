# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    password { "my_super_duper_password" }
    email { "someemail@someemailprovider.com" }
  end
end
