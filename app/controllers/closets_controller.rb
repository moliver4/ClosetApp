class ClosetsController < ApplicationController
    before_action :redirect_user
    def index
        @user = find_user
        @closets = Closet.where(user_id: session[:user_id])
    end

    def show
        @closet = Closet.find(params[:id])
    end

    def new
        @closet = Closet.new
    end

    def create
        @user = find_user
        @closet = Closet.new(title: closet_params[:title], user_id: @user.id)
        if @closet.save 
            redirect_to closet_path(@closet)
        else
            render :new
        end
            
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    def find_user
        @user = User.find(session[:user_id])
    end
    def closet_params
        params.require(:closet).permit(:title, :search, :user_id)
    end
end
