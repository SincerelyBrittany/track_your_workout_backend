class Api::V1::UserWorkoutsController < ApplicationController
  before_action :find_user_workout, only: [:show, :update, :destroy]

  def index
    user_workouts = if params[:user_id].present?
      UserWorkout.where(user_id: params[:user_id]).order(:date)
    else
      UserWorkout.order(:date)
    end
    render json: UserWorkoutsSerializer.new(user_workouts).to_serialized_json
  end

  def show
    render json: UserWorkoutsSerializer.new(@user_workout).to_serialized_json
  end

  def update
    @user_workout.workout.update(workout_params)
    @user_workout.update(date: user_workout_params['date'])
    if @user_workout.save
      render json: UserWorkoutsSerializer.new(@user_workout).to_serialized_json
    else
      render json: { errors: @user_workout.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def create
    user = User.find(user_params['username'])
    workout = Workout.create(workout_params)
    user_workout = UserWorkout.new(date: user_workout_params['date'], workout: workout, user: user)
    if user_workout.save
      render json: UserWorkoutsSerializer.new(user_workout).to_serialized_json
    else
      render json: { errors: user_workout.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @user_workout.destroy
    render json: { message: 'Workout deleted successfully' }, status: :ok
  end

  private

  def find_user_workout
    @user_workout = UserWorkout.find_by_id(params[:id])
    render json: { error: 'Workout not found' }, status: :not_found unless @user_workout
  end

  def workout_params
    params.require(:user_workout).permit(:name, :url, :time)
  end

  def user_params
    params.require(:user_workout).permit(:username)
  end

  def user_workout_params
    params.require(:user_workout).permit(:date)
  end
end
