
object @skill
attributes :id, :name
child :users do |user|
  attributes :id, :email, :name, :latitude, :longitude, :image, :location
end
