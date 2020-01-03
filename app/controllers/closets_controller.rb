class ClosetsController < ApplicationController
    before_action :redirect_user
    def index
        @user = find_user
        @closets = Closet.where(user_id: session[:user_id])
    end

    def show
        @closet = Closet.find(params[:id])

        session[:closet_id] = @closet.id
        
        @items = @closet.sorted_items
        @categories = @closet.all_categories
    end

    def new
        @closet = Closet.new
    end

    def create
        @closet = Closet.new(closet_params)
        @closet.user = find_user
        if @closet.save 
            redirect_to closet_path(@closet)
        else
            render :new
        end
    end


    def destroy
        @closet = Closet.find(params[:id])
        @closet.destroy
        redirect_to closets_path
    end

    private
    def find_user
        @user = User.find(session[:user_id])
    end

    def closet_params
        params.require(:closet).permit(:title, :user_id)
    end


end
