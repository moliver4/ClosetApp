class ClosetsController < ApplicationController
    before_action :redirect_user
    def index
        @user = find_user
        @closets = Closet.where(user_id: session[:user_id])
    end

    def show
        @closet = Closet.find(params[:id])
        session[:closet_id] = @closet.id
    end

    def new
        @closet = Closet.new
    end

    def create
        @closet = Closet.new(cp)
        if @closet.save 
            redirect_to closet_path(@closet)
        else
            render :new
        end
    end


    def destroy
    end

    private
    def find_user
        @user = User.find(session[:user_id])
    end

    def closet_params
        params.require(:closet).permit(:title, :search, :user_id, categories_attributes: [:title] )
    end

    def cp 
        @user = find_user
        closet_params[:user_id] = @user.id 
    end
end
