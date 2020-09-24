class Api::V1::UserWorkoutsController < ApplicationController
    def index
        @user_workouts = UserWorkout.all
        render json: @user_workouts, status: 200
        #active model serializer
    end 

    def show
        @user_workout = UserWorkout.find(params[:id])
        render json: @user_workout, status: 200
    end 

    def create
        @user_workout = UserWorkout.new(workout_params)
        @user_workout.save
        render json: @user_workout, status: 200
    end 

    def update 
        @user_workout = UserWorkout.find(params[:id])
        @user_workout.update(workout_params)
        render json: @user_workout, status: 200
    end 

    def destroy
        @user_workout = UserWorkout.find(params[:id])
        # authorize_user_name(user_workout)
        @user_workout.destroy
        render_resource(@user_workout)
    end 

    private

    def workout_params
        params.require(:user_workout).permit(:name, :url, :time, :category)
    end 




end
