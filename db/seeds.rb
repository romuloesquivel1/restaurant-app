require 'faker'

(1..20).each do
  Dish.create(
    dish_group: Faker::Food.ethnic_category,
    name: Faker::Food.dish,
    description: Faker::Food.description,
    price: Faker::Commerce.price,
    photo: Faker::LoremFlickr.image
  )
end
