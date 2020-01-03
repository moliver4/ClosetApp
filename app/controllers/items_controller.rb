class ItemsController < ApplicationController
    before_action :redirect_user

    def show
        @item = Item.find(params[:id])
        @closet = Closet.find(session[:closet_id])
    end

    def new
        @category = Category.new
        @item = Item.new
        @user = User.find(session[:user_id])
        @closets = @user.closets
    end

    def create
        @item = Item.new(item_params)

        if @item.save
            redirect_to @item
        else
            render :new
        end
    end

    def edit
        @item = Item.find(params[:id])
        @category = Category.new
        @user = User.find(session[:user_id])
        @closets = @user.closets
    end

    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        redirect_to item_path(@item)
        
    end

    def worn
        @item = Item.find(params[:id])
        @item.increment!(:worn_count)
        redirect_to item_path(@item)
    end

    def closet_worn
        @item = Item.find(params[:id])
        @item.increment!(:worn_count)
        @closet = Closet.find(session[:closet_id])
        redirect_to closet_path(@closet)
    end

    def category_worn
        @item = Item.find(params[:id])
        @item.increment!(:worn_count)
        @category = Category.find(session[:category_id])
        redirect_to category_path(@category)
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to closet_path(session[:closet_id])
    end

    private
    def item_params
        params.require(:item).permit(:name, :description, :size, :worn_count, :condition, :closet_id, :photo, category_ids:[])
    end

end
