
collection @users
attributes :id, :email, :latitude, :longitude
child :skills do |answer|
  attributes :id, :name
end
