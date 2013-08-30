class PhotosController < ApplicationController
	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy
	end

	def show
		@photo = Photo.find(params[:id])
	end
end
