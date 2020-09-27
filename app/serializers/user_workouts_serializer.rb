class UserWorkoutsSerializer
  def initialize(workout_obj)
    @user_workout = workout_obj
  end 

  def to_serialized_json
     @user_workout.to_json(:only => [:id, :user_id, :workout_id], methods: :update_date, 
    :include => {
        :workout => {:only => [:name, :url], methods: :time_updated},
        :user => {:only => [:username]} 
    })
  end 

end