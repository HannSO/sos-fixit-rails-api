# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  ['ron@mail.com', 'Ron', 'password', 51.521, -0.0843, '/images/profiles/ron.jpg', 'Shoreditch'],
  ['ben@mail.com', 'Ben', 'password', 51.529, -0.0852, '/images/profiles/ben.jpg', 'London'],
  ['tom@mail.com', 'Tom', 'password', 51.532, -0.0842, '/images/profiles/tom.jpg', 'London'],
  ['leslie@mail.com', 'Leslie', 'password', 51.525, -0.0832, '/images/profiles/leslie.jpg', 'Shoreditch'],
  ['ann@mail.com', 'Ann', 'password', 51.528, -0.0822, '/images/profiles/ann.jpg', 'Commercial Street'],
  ['april@mail.com', 'April', 'password', 51.535, -0.0802, '/images/profiles/april.jpg', 'London'],
  ['andy@mail.com', 'Andy', 'password', 51.535, -0.0818, '/images/profiles/andy.jpg', 'Shoreditch'],
  ['jerry@mail.com', 'Jerry', 'password', 51.505, -0.0802, '/images/profiles/jerry.jpg', 'Shoreditch'],
  ['kramer@mail.com', 'Kramer', 'password', 51.545, -0.0866, '/images/profiles/kramer.jpg', 'Shoreditch'],
  ['george@mail.com', 'George', 'password', 51.509, -0.0891, '/images/profiles/george.jpg', 'Shoreditch'],
  ['elaine@mail.com', 'Elaine', 'password', 51.495, -0.0802, '/images/profiles/elaine.jpg', 'Shoreditch'],
  ['newman@mail.com', 'Newman', 'password', 51.518, -0.0839, '/images/profiles/newman.jpg', 'London'],
  ['larry@mail.com', 'Larry', 'password', 51.325, -0.0839, '/images/profiles/larry.jpg', 'London'],
  ['fred@mail.com', 'Fred', 'password', 51.425, -0.0810, '/images/profiles/fred.jpg', 'Shoreditch'],
  ['carrie@mail.com', 'Carrie', 'password', 51.625, -0.0882, '/images/profiles/carrie.jpg', 'Shoreditch'],

]

users.each do |email, name, password, lat, lng, image, location|
  User.create(email: email, name: name, password: password, password_confirmation: password, latitude: lat, longitude: lng, image: image, location: location)
end

skills = [
  'plumbing',
  'bike maintenance',
  'gardening',
  'car maintenance',
  'window fixing',
  'bike maintenance',
  'basic DIY',
  'plastering',
  'basic electrics',
  'decorating',
  'haberdashery',
  'computers',
  'audio-visual (TVs etc)',
  'heavy lifting',
  'manual labour',
  'pets'
]

skills.each do |skill|
  Skill.create(name: skill)
end


users_one = User.find([1,3,5,7,9,11,13,15])
skills_one = Skill.find([1,3,5,7,9,11,13,15,2,8])

users_one.each do |user|
  user.skills << skills_one
end

users_two = User.find([2,4,6,8,10,12,14])
skills_two = Skill.find([2,4,6,8,10,12,14,16,5,9])

users_two.each do |user|
  user.skills << skills_two
end
