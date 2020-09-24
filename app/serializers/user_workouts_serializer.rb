# class UserWorkoutsSerializer < ActiveModel::Serializer
#   attributes :id
# end

class UserWorkoutsSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :date, :user_id, :user, :workout
end
