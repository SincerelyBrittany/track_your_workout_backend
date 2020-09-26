class UserWorkout < ApplicationRecord
    belongs_to :user
    belongs_to :workout

    def update_date
        date.strftime("%m/%d/%Y")
    end

    # def user_check
    #     if self.date &&  self.user == current_user

    #     end 
    # end 


end
