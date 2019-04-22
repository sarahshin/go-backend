class Api::V1::EventsController < ApplicationController
  before_action :find_event, only: [:update, :destroy]

  def create
    @event = Event.new(event_params)
    if @event.save
      render json: @event, status: :accepted
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def index
    @events = Event.all
    render json: @events
  end

  def update
    @event.update(event_params)
    if @event.save
      render json: @event, status: :accepted
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @event.destroy
    render body: nil, status: :no_content
  end

  private

  def event_params
    params.permit(:date, :time, :name, :location, :address, :url, :imgurl, :user_trip_id, :address1, :address2, :latitude, :longitude, :phone, :rating, :price, :cat)
  end

  def find_event
    @event = Event.find(params[:id])
  end
end
