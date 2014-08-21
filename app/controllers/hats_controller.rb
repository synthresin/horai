class HatsController < ApplicationController
	def index
		@hats = Hat.all		
	end

	def show
		@hat = Hat.find(params[:id])
	end
end
