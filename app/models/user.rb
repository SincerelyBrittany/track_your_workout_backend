class User < ApplicationRecord
    has_many :user_workouts, dependent: :destroy
    has_many :workouts, through: :user_workouts
end
