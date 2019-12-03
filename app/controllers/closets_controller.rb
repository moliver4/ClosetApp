class ClosetsController < ApplicationController
    before_action :redirect_user
    def index
        return head(:forbidden) unless session.include? :user_id
        @closets = Closet.where(user_id: params[:user_id])
    end

    def show
        @closet = Closet.find(params[:closet_id])
    end

    def new
    end

    def create

    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
 
    def closet_params
        params.require(:closet).permist(:title, :search, )
    end
end
