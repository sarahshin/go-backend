class Api::V1::YelpController < ApplicationController
  require 'json'

  # API_KEY = ENV["YELP_API_KEY"]

  def restaurantSearch
    search_term = params[:searchTerm]
    search_location = params[:location]
    response = RestClient::Request.execute(
      method: "GET",
      url: "https://api.yelp.com/v3/businesses/search?location=#{search_location}&term=#{search_term}&categories=restaurants&limit=50",
      headers: {Authorization: "Bearer MafaqqGSRpsrVijZ3-ni4Jc_4u3Ixf-3_9hUQ3F6gmXOGR-PDQWIM9EGtdtHgMXaQBFB3Rtd0pR8gfZAFaFKDvyi5e7El9_Vvn2iXv_Dl7Y3AQbSisPMmyUlO2-jXHYx"}
    )
    results = JSON.parse(response)
    render json: results
  end

  def artsSearch
    search_term = params[:searchTerm]
    search_location = params[:location]
    response = RestClient::Request.execute(
      method: "GET",
      url: "https://api.yelp.com/v3/businesses/search?location=#{search_location}&term=#{search_term}&categories=arts&limit=50",
      headers: {Authorization: "Bearer MafaqqGSRpsrVijZ3-ni4Jc_4u3Ixf-3_9hUQ3F6gmXOGR-PDQWIM9EGtdtHgMXaQBFB3Rtd0pR8gfZAFaFKDvyi5e7El9_Vvn2iXv_Dl7Y3AQbSisPMmyUlO2-jXHYx"}
    )
    results = JSON.parse(response)
    render json: results
  end

  def nightlifeSearch
    search_term = params[:searchTerm]
    search_location = params[:location]
    response = RestClient::Request.execute(
      method: "GET",
      url: "https://api.yelp.com/v3/businesses/search?location=#{search_location}&term=#{search_term}&categories=nightlife&limit=50",
      headers: {Authorization: "Bearer MafaqqGSRpsrVijZ3-ni4Jc_4u3Ixf-3_9hUQ3F6gmXOGR-PDQWIM9EGtdtHgMXaQBFB3Rtd0pR8gfZAFaFKDvyi5e7El9_Vvn2iXv_Dl7Y3AQbSisPMmyUlO2-jXHYx"}
    )
    results = JSON.parse(response)
    render json: results
  end

  def souvenirsSearch
    search_term = params[:searchTerm]
    search_location = params[:location]
    response = RestClient::Request.execute(
      method: "GET",
      url: "https://api.yelp.com/v3/businesses/search?location=#{search_location}&term=#{search_term}&categories=souvenirs&limit=50",
      headers: {Authorization: "Bearer MafaqqGSRpsrVijZ3-ni4Jc_4u3Ixf-3_9hUQ3F6gmXOGR-PDQWIM9EGtdtHgMXaQBFB3Rtd0pR8gfZAFaFKDvyi5e7El9_Vvn2iXv_Dl7Y3AQbSisPMmyUlO2-jXHYx"}
    )
    results = JSON.parse(response)
    render json: results
  end

  def toursSearch
    search_term = params[:searchTerm]
    search_location = params[:location]
    response = RestClient::Request.execute(
      method: "GET",
      url: "https://api.yelp.com/v3/businesses/search?location=#{search_location}&term=#{search_term}&categories=tours&limit=50",
      headers: {Authorization: "Bearer MafaqqGSRpsrVijZ3-ni4Jc_4u3Ixf-3_9hUQ3F6gmXOGR-PDQWIM9EGtdtHgMXaQBFB3Rtd0pR8gfZAFaFKDvyi5e7El9_Vvn2iXv_Dl7Y3AQbSisPMmyUlO2-jXHYx"}
    )
    results = JSON.parse(response)
    render json: results
  end


end
