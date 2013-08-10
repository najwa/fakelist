class CitiesController < ApplicationController
   def index
   	@cities = City.all
   end

  def show
  	@city = City.find(params[:id])
  	@categories = Category.all
  end
end
