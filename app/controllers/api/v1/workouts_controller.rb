class Api::V1::WorkoutsController < ApplicationController
  def index
    render json: Workout.all, status: :ok
  end
end
