class Api::V1::UserTripsController < ApplicationController
  before_action :find_user_trip, only: [:update]

  def create
    @user_trip = UserTrip.new(user_trip_params)
    if @user_trip.save
      render json: @user_trip, status: :accepted
    else
      render json: { errors: @user_trip.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def index
    @user_trips = UserTrip.all
    render json: @user_trips
  end

  def update
    @user_trip.update(user_params)
    if @user_trip.save
      render json: @user_trip, status: :accepted
    else
      render json: { errors: @user_trip.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_trip_params
    params.permit(:user_id, :trip_id)
  end

  def find_user_trips
    @user_trip = UserTrip.find(params[:id])
  end
end
