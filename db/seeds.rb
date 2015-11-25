5.times do
	User.create!(
		email: Faker::Internet.email,
		password: Faker::Lorem::characters(8)
	)
end

User.create!(
	email: 'admin@blocitoff.com',
	password: 'helloworld'
)

users = User.all

50.times do
	Item.create!(
		name: Faker::Lorem.sentence,
		user: users.sample
	)
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"