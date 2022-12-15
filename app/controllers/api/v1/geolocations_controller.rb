class Api::V1::GeolocationsController < Api::V1::BaseController
  def index
    @geolocations = policy_scope(Geolocation)
  end
end
