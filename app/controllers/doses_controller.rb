class DosesController < ApplicationController
  before_action :set_cocktail, only: [:create, :new, :show, :edit, :update, :destroy]
  before_action :set_dose, only: [:show, :edit, :update, :destroy]

  def index
    @doses = Dose.all
  end

  def new
    @dose = Dose.new
  end

  def update
    @dose = Dose.update(dose_params)
    redirect_to cocktail_dose_path(@dose)
  end

  def show
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def edit
  end

  def destroy
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
