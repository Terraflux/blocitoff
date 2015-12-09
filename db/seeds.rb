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
	item = Item.create!(
		name: Faker::Lorem.sentence,
		user: users.sample
	)
	item.update_attribute(:created_at, rand(10.minutes .. 7.days).ago)
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"