class ItemsController < ApplicationController
    before_action :redirect_user

    def show
        @item = Item.find(params[:id])
    end

    def new
        @category = Category.new
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

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to closet_path(session[:closet_id])
    end

    private
    def item_params
        params.require(:item).permit(:name, :description, :size, :worn_count, :condition, :closet_id, category_ids:[])
    end

end
