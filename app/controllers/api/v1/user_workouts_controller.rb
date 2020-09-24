class Api::V1::UserWorkoutsController < ApplicationController
    before_action :find_user_workout, only: [:show, :update, :destroy]

    def index
        user_workouts = UserWorkout.all
        render json: UserWorkoutsSerializer.new(user_workouts)
    end

    def show
        #user_workout = UserWorkout.find_by_id(params[:id])
        render json: UserWorkoutsSerializer.new(user_workout)
    end

    def update
        #user_workout = UserWorkout.find_by_id(params[:id])
        user_workout.update(user_workout_params)
        if user_workout.save
            render json: UserWorkoutsSerializer.new(user_workout), status: :accepted
        else
          render json: { errors: user_workout.errors.full_messages }, status: :unprocessable_entity
        end
    end
    def create
        user_workout = UserWorkout.new(user_workout_params)
        if user_workout.save
            render json: UserWorkoutsSerializer.new(user_workout), status: :accepted
        else
            render json: { errors: user_workout.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        #user_workout = UserWorkout.find_by_id(params[:id])
        user_workout.destroy
        user_workouts = UserWorkout.all
        render json: UserWorkoutsSerializer.new(user_workouts)
    end

    private
    
    def user_workout_params
        params.require(:user_workout).permit(:name)
    end

    def find_user_workout
        user_workout = UserWorkout.find_by_id(params[:id])    
    end


end
