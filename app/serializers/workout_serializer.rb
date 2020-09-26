# class WorkoutSerializer < ActiveModel::Serializer
#   attributes :id
# end


# class WorkoutSerializer
#   include FastJsonapi::ObjectSerializer
#   # attributes :name, :url, :time, :user_workouts
#   has_many :user_workouts
#   has_many :users

#   def time
#     time.strftime("%I:%M:%S %p")
#   end

# end