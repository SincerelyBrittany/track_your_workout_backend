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
  #  @user_workout.to_json(:only => [:created_at, :updated_at], methods: :update_date), 
    :include => {
        :workout => {:only => [:name, :url], methods: :time_updated},
        :user => {:only => [:name]} 
    })
  end 

  # def update_time
  #   time.strftime("%I:%M:%S %p")
  # end
end