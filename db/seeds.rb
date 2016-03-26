# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  ['alf@mail.com', 'Alf Jones', 'password', 51.5285, 0.0847],
  ['bert@mail.com', 'Bert Johnson', 'password', 51.5288, -0.0809],
  ['chris@mail.com', 'Chris Pine', 'password', 51.5174, -0.083],
  ['david@mail.com', 'David Edwards', 'password', 51.5195, -0.0611]
]

users.each do |email, name, password, lat, lng|
  User.create(email: email, name: name, password: password, password_confirmation: password, latitude: lat, longitude: lng)
end

skills = ['plumbing','bike maintenance','gardening','car maintenance','english']

skills.each do |skill|
  Skill.create(name: skill)
end


users_one = User.find([1,3])
skills_one = Skill.find([1,4])

users_one.each do |user|
  user.skills << skills_one
end

users_two = User.find([2,4])
skills_two = Skill.find([2,3])

users_two.each do |user|
  user.skills << skills_two
end


users_three = User.find([1,4])
skills_three = Skill.find([5])

users_three.each do |user|
  user.skills << skills_three
end
