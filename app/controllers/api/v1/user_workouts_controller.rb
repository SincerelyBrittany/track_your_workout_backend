class Api::V1::UserWorkoutsController < ApplicationController
    before_action :find_user_workout, only: [:show, :update, :destroy]

    def index
        user_workouts = UserWorkout.order(:date).order(:time_updated)
       # user_workouts = user_workouts.where(user_id: 2).order(:date).order(:time_updated)
        render json: UserWorkoutsSerializer.new(user_workouts).to_serialized_json
    end

    def show
        user_workout = UserWorkout.find_by_id(params[:id])
        render json: UserWorkoutsSerializer.new(@user_workout).to_serialized_json
    end

    def update
        user_workout = UserWorkout.find_by_id(params[:id])
        if user_workout.workout.update(workout_params)
            workout = user_workout.workout
        end 
        user = user_workout.user
        user_workout.update(date: user_workout_params["date"], workout: workout, user: user)
        if user_workout.save
            render json: UserWorkoutsSerializer.new(user_workout).to_serialized_json
        else
          render json: { errors: user_workout.errors.full_messages }, status: :unprocessable_entity
        end
     end

    def create
        user = User.find(user_params["username"])
        workout = Workout.create(workout_params)
        user_workout = UserWorkout.new(date: user_workout_params["date"], workout: workout, user: user)
        if user_workout.save
            render json: UserWorkoutsSerializer.new(user_workout).to_serialized_json
        else
            byebug
            render json: { errors: user_workout.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        user_workout = UserWorkout.find_by_id(params[:id])
        # byebug
        user_workout.destroy
        user_workouts = UserWorkout.all
        render json: UserWorkoutsSerializer.new(user_workouts)
    end

    private
    
    def workout_params
        params.require(:user_workout).permit(:name, :url, :time)
    end

    def user_params
        params.require(:user_workout).permit(:username)
    end

    def user_workout_params
        params.require(:user_workout).permit(:date)
    end
    def user_work_params
        params.permit(:name, :date, :url, :time)
    end

    def find_user_workout
        @user_workout = UserWorkout.find_by_id(params[:id])    
    end


end
