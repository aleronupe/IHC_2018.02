class CategoriesController < ApplicationController
    def show
        @category = Category.find(params[:id])
        @products = @category.products
        @contador = 0
    end
end
