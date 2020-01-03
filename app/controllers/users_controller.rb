class UsersController < ApplicationController
    skip_before_action :redirect_user, only: [:new, :create, :update, :edit]
    
    def show
        @user = find_user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to closets_path
        else
            render :new
        end
    end

    def edit
        @user = find_user
    end

    def update
        @user = find_user
        @user.update(user_params)
        redirect_to closets_path
    end

    def weather
        @user = find_user 
    end

    private
    def user_params
        params.require(:user).permit(:username, :name, :city, :password, :password_confirmation)
    end

    def find_user 
        @user = User.find(session[:user_id])
    end

end
