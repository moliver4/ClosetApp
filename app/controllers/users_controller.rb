class UsersController < ApplicationController
    def show
        @user = User.find(session[:user_id])
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
        @user = User.find(session[:user_id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to closets_path
    end

    private
    def user_params
        params.require(:user).permit(:username, :name, :city, :password, :password_confirmation)
    end

end
