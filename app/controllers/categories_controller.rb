class CategoriesController < ApplicationController
    before_action :redirect_user

    def index 
        @categories = Category.all
    end

    def show
        @category = Category.find(params[:id])
    end

    def new
        @category = Category.new
    end

    def create 
        @category = Category.new(cat_params)
        if @category.save
            redirect_to category_path(@category)
        else 
            render :new
        end
    end
    
    private

    def cat_params
        params.require(:category).permit(:title)
    end
end
