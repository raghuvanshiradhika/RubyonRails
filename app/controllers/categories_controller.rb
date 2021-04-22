class CategoriesController < ApplicationController
    include Pagy::Backend

    def index
        
        if !params[:per_page].present?
            params[:per_page] = 2 #default
        end
        
        @pagy, @categories = pagy(Category, items: params[:per_page])   
    end

    def show
        @category = Category.find(params[:id])
    end

    def new
    end

    def edit
        @category = Category.find(params[:id])
    end

    def create
        @category = Category.new(params.require(:category).permit(:name, :description, :active))
        @category.save
        redirect_to category_path(@category)
    end

    def update
        @category = Category.find(params[:id])
        @category.update(params.require(:category).permit(:name, :description, :active))
        redirect_to category_path(@category)
    end

    def destroy
        byebug
        @category = Category.find(params[:id])
        @category.update_column(:active, 0)
        redirect_to category_path(@category)
    end

end