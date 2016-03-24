
object @skill
attributes :id, :name
child :users do |user|
  attributes :id, :email
end
