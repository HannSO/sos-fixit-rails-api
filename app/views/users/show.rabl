
object @user
attributes :id, :email, :latitude, :longitude, :image
child :skills do |skill|
  attributes :id, :name
end
