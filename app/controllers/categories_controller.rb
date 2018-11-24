class CategoriesController < ApplicationController
    def show
        @products = Category.find(params[:id]).products
        @contador = 0
    end
end
