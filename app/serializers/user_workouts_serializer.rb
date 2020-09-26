# class UserWorkoutsSerializer < ActiveModel::Serializer
#   attributes :id
# end

# class UserWorkoutsSerializer
#   include FastJsonapi::ObjectSerializer
#   # attributes :id, :user_id, :workout_id, :date 
#   # belongs_to :user
#   # belongs_to :workout

#   attributes  :date, :user_id, :user, :workout
# end

class UserWorkoutsSerializer
  def initialize(workout_obj)
    @user_workout = workout_obj
  end 

  def to_serialized_json
    @user_workout.to_json(:except => [:created_at, :updated_at], 
    :include => {
        :workout => {:only => [:name, :url, :time]}, 
        :user => {:only => [:name]} 
    })
  end 

  def update_time
    time.strftime("%I:%M:%S %p")
  end
end