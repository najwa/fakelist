class SubcategoriesController < ApplicationController

	def show
  	@city 				= City.find(params[:city_id])
  	@subcategory 	= Subcategory.find(params[:id])
		@posts 				= Post.where(city: @city, subcategory: @subcategory)
	end
end
