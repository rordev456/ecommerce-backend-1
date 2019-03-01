class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.new(user_params)
        if @user.save
            @token = encode_token(user_id: @user.id)
            render json: {user: @user, jwt: @token}, status: :created
        else render json: { error: "Failed to create user"}, status: :not_acceptable
        end
    end

    def login
        @user = User.find_by(email: user_params[:email])
        if @user
            if @user.authenticate(user_params[:password])
                @token = encode_token(user_id: @user.id)
                render json: {user: @user, jwt: @token}, status: :created
            else render json: {message: "The password didn't work"}, status: :not_acceptable
            end
        else render json: {message: "The email didn't work"}, status: :not_acceptable
        end
    end
    

    private
    def user_params
        params.permit(:name, :email, :password)
    end
    

end
