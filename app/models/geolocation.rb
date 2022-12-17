class Geolocation < ApplicationRecord
  belongs_to :user

  require 'net/http'

  def find_museums
    uri = URI("https://api.mapbox.com/search/v1/reverse/#{lat},#{long}?language=en&access_token=pk.eyJ1Ijoibmlrb2xhejkwIiwiYSI6ImNsYTJpdGdpbjBodTkzdm9qbW92bDFmeXAifQ.ftQ3LJBTgGuTD-6EZck-ag")
    Net::HTTP.get(uri)
  end
end
