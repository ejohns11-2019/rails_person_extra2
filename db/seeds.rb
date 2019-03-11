20.times do
  Person.create([{
    name: Faker::Artist.name,
    age: Faker::Number.between(1, 105),
    gender: Faker::Gender.binary_type,
    eye_color: Faker::Color.color_name,
    hair_color: Faker::Color.color_name,
    alive: Faker::Boolean.boolean
  }])
  end

p "Created #{Person.count} people"
