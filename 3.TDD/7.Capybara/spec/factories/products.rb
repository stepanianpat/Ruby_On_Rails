FactoryGirl.define do
  factory :product do
    name "productname"
    user #nil, if remove, a default user from the :user factory will be created every time we build a product
  end
end
