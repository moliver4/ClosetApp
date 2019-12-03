class SessionsController < ApplicationController
    def login
        # nothing to do here!
    end
 

    def verify
        # byebug
        @user = User.find_by(username: params[:auth][:username])
        # byebug
        if @user && @user.authenticate(params[:auth][:password])
            session[:user_id] = @user.id
            redirect_to closets_path
        else 
            flash[:message] = "Incorrect please try again"
            render :login
        end
    end

    def logout
        session.clear
        redirect_to login_path
    end

    def current_user
        @user = User.find(session[:user_id])
    end
end