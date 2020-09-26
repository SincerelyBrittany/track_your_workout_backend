class User < ApplicationRecord
    has_many :user_workouts, dependent: :destroy
    has_many :workouts, through: :user_workouts

    def create_find_by_name(user_params)
        self.where(name: user_params).first_or_create do |user|
            user.name = user_params.name
        end
    end 
end
