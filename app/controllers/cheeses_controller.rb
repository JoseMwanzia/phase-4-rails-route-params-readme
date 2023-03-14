class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
    # byebug
  end

  def show
    # FIND A CHEESE USING THE ID FROM THE URL
    cheese = Cheese.find_by(params[:id])
    # SEND A JSON RESPONSE USING THAT CHEESE OBJECT
    render json: cheese
    byebug
  end
end
