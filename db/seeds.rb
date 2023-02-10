[1, 2, 3, 4].each do |i|
  User.create(name: Faker::JapaneseMedia::StudioGhibli.character, created_at: Time.now, updated_at: Time.now)
end