class SessionsController < ApplicationController
    def create
        user = User.find_by(name: params[:name])
        if user #&& user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: {user: user, session: session}
        else
            render json: { errors: "Password incorrect" }, status: :unprocessable_entity
        end

    end
end