class Api::V1::WorkoutsController < ApplicationController
    # before_action :authenticate_user!
    def index
        workouts = Workout.all
        # render json: workouts
        render json: WorkoutSerializer.new(workouts)
        # render json: @workouts.to_json(include: [:category])
        # render json: @workouts, status: 200
    end

    def show
        @workout = Workout.find(params[:id])
        render json: @workout, status: 200
    end 

    def create
        @workout = Workout.new(workout_params)
        @workout.save
        render json: @workout, status: 200
    end 

    def update 
        @workout = Workout.find(params[:id])
        @workout.update(workout_params)
        render json: @workout, status: 200
    end 

    def destroy
        @workout = Workout.find(params[:id])
        @workout.destroy
        render json: @workout, status: 200
    end 

    private

    def workout_params
        params.require(:workout).permit(:name, :url, :time, :category_id)
    end 
end
