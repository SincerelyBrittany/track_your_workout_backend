class UserWorkout < ApplicationRecord
    belongs_to :user
    belongs_to :workout

    validates :date, presence: true

    def update_date
        date.strftime("%A, %b %e, %Y")
    end

    def create_find_by_name(user_params)
        User.where(username: user_params).first_or_create do |user|
            user.name = user_params.name
        end
    end 

    # def user_check
    #     if self.date &&  self.user == current_user

    #     end 
    # end 


end
