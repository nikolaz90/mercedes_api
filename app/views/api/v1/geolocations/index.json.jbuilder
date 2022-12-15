json.array! @geolocations do |geolocation|
  json.extract! geolocation, :lat, :long, :id
end
