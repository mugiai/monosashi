class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  def index
    @foods = Food.all
  end

  def show
  end

  def new
    @food = Food.new
  end

  def edit
  end

  def create
    @food = Food.new(food_params)
      if @food.save
        redirect_to @food, notice: 'foodが登録されました'
      else
        render :new
      end
  end
  def update
  end
  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @set_food = Food.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:food_name,:review,:evaluation)
    end
end
