class Workout < ApplicationRecord
    belongs_to :category
    has_many :user_workouts, dependent: :destroy
    has_many :users, through: :user_workouts
end
