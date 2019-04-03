class Api::V1::YelpController < ApplicationController
  require 'json'

  def fetch
   rest_name = params[:_json]
   response = RestClient::Request.execute(
     method: :get,
     url: "https://api.yelp.com/v3/businesses/search?term=#{rest_name}&location=charlotte",
     headers: {Authorization: "Bearer 8ESWJF5yfJ2HIjpxhoXJVnZ9CuXnQHtLMIlSgVwsGu1-Sr5VWaDhSThfTM6riZ-HbnTY_xjp8vbPk7wKEgwlSrpmTMFjzrwV9jy1X0CjQzzd-8AYhAbqfTcYasmgXHYx"}
   )
     results = JSON.parse(response)
     render json: results
  end
end
