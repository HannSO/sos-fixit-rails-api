
object @user
attributes :id, :email
child :skills do |answer|
  attributes :id, :name
end
