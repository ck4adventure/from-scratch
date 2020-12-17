
class Api::V1::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    # render json: @recipes, status: :ok
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      render :show
    else
      render json: @recipe.errors, status: :bad_request
    end
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render :show
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    if @recipe.update
      render :show
    else
      render json: @recipe.errors, status: :bad_request
    end

  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
  end

  private
  def recipe_params
    params.require(:recipe).permit(
        :title, 
        :description, 
        :steps, 
        :base_item,
        ingredients_attributes: [
          :recipe_id,
          :item_id,
          :qty,
          :measure
        ] 
      )
  end
end

