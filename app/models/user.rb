class User < ApplicationRecord
    has_many :user_workouts, dependent: :destroy
    has_many :workouts, through: :user_workouts

    def create_find_by_name(user_params)
        self.where(username: user_params).first_or_create do |user|
            user.username = user_params.username
        end
    end 
end
