
object @user
attributes :id, :email, :latitude, :longitude, :image, :location
child :skills do |skill|
  attributes :id, :name
end
