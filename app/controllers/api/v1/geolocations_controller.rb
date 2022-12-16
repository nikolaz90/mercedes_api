class Api::V1::GeolocationsController < Api::V1::BaseController
  def index
    @geolocations = policy_scope(Geolocation)
  end

  def create
    @geolocation = Geolocation.new(geolocation_params)
    @geolocation.user = current_user
    authorize @geolocation
    raise
  end

  private

  def geolocation_params
    params.require(:geolocation).permit(:long, :lat)
  end
end
