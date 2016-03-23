# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  ['alf@mail.com', 'password'],
  ['bert@mail.com', 'password'],
  ['chris@mail.com', 'password'],
  ['david@mail.com', 'password']
]

users.each do |email, password|
  User.create(email: email, password: password, password_confirmation: password)
end

skills = ['plumbing','bike maintenance','gardening','car maintenance','english']

skills.each do |skill|
  Skill.create(name: skill)
end

users = User.all
skills = Skill.all

users.each do |user|
  user.skills << skills
end
