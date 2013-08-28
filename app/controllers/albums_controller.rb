class AlbumsController < ApplicationController
	def index
		@albums = Album.all()
	end

	def show
		@album = Album.find(params[:id])
	end

	def sync
		Album.index_all()
		redirect_to albums_path
	end
end
