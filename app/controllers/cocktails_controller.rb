class CocktailsController < ApplicationController
    before_action :set_cocktail, only: [:show, :edit, :update, :destroy]


  def index
    @cocktails = Cocktail.all

  end

  def new
    @cocktail = Cocktail.new
  end

  def update
    @cocktail = Cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def show
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def edit
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
