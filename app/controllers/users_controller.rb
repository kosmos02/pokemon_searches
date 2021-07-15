class UsersController < ApplicationController

    def index
        @users = User.all

        render json: @users
    end
    
    def create
        @user = User.new(user_params)

        if @user.valid?
            @user.save

            render json: { user: @user}, status: :created
        else
            render json: { errors: @user.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def login
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            @token = JWT.encode([user_id: @user.id], ENV['SECRET_KEY_BASE'])

            render json: { user: @user, token: @token}
        else
            render json: { error: "Invalid Credentials"}, status: :unauthorized
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
