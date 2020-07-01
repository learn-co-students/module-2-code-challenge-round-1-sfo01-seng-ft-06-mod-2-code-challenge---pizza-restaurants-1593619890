class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.create(params.require(:pizza).permit(:name, :ingredients))
    if @pizza.save
      redirect_to pizza_path
    else
      flash[:errors] = @pizza.errors.full_messages
      render action: 'new' 
    end
  end

end
