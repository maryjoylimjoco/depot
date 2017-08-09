FactoryGirl.define do
  factory :product do
    sequence(:title) {|n| "Product #{n + 1}"}
    description 'A good product'
    image_url 'http://test.com/dog.jpg'
    price 200
  end
end