# class WorkoutSerializer < ActiveModel::Serializer
#   attributes :id
# end


class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :url, :user_workouts
end