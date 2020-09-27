class Api::V1::UserWorkoutsController < ApplicationController
    before_action :find_user_workout, only: [:show, :update, :destroy]

    def index
        user_workouts = UserWorkout.all
        user_workouts = user_workouts.where(user_id: 2).order(:date).order(:time_updated)
        render json: UserWorkoutsSerializer.new(user_workouts).to_serialized_json
    end

    # def show
    #     user_workout = UserWorkout.find_by_id(params[:id])
    #     render json: UserWorkoutsSerializer.new(@user_workout).to_serialized_json
    # end

    def update
        byebug
    #     #user_workout = UserWorkout.find_by_id(params[:id])
    #     user_workout.update(user_workout_params)
    #     if user_workout.save
    #         render json: UserWorkoutsSerializer.new(user_workout), status: :accepted
    #     else
    #       render json: { errors: user_workout.errors.full_messages }, status: :unprocessable_entity
    #     end
     end

    def create
        user = User.find_by(username: "b")
        workout = Workout.create(workout_params)
        user_workout = UserWorkout.new(date: user_workout_params["date"], workout: workout, user: user)
        if user_workout.save
            render json: UserWorkoutsSerializer.new(user_workout).to_serialized_json
        else
            render json: { errors: user_workout.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        user_workout = UserWorkout.find_by_id(params[:id])
        # byebug
        # user_workout.destroy
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

    def find_user_workout
        @user_workout = UserWorkout.find_by_id(params[:id])    
    end


end
