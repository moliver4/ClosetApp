class ItemsController < ApplicationController
    before_action :redirect_user

    def show
        @item = Item.find(params[:id])
    end

    def new
        @item = Item.new
        @user = User.find(session[:user_id])
        @closets = @user.closets
    end

    def create
        @item = Item.new(item_params)
        byebug
        if @item.save
            redirect_to @item
        else
            puts @item.messages.full_errors
            render :new
        end

    end

    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.update(item_params)
        if @item.save
            redirect_to item_path(@item)
        else
            render :edit
        end
    end

    private
    def item_params
        params.require(:item).permit(:name, :description, :size, :worn_count, :condition, :closet_id, category_ids:[])
    end

end
