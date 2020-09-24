class UsersController < ApplicationController
 def create
        user = User.new(user_params)
        if user.save
            render json: {id: user.id, name:user.name}, status: :accepted
        else
            render json: { errors: "Password incorrect" }, status: :unprocessable_entity
        end
    end

    private
    def user_params
        params.require(:user).permit(:name)#, :email, :password, :password_confirmation)
    end
end
