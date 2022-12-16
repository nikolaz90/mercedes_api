json.array! @geolocation do |geolocation|
  json.extract! geolocation, :lat, :long, :id
end
