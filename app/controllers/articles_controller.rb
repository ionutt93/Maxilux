class ArticlesController < ApplicationController
	def index
		@articles = Article.all()
	end

	def new
		@article = Article.new
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(params[:article].permit(:title, :author, :content))
		if @article.save
			redirect_to articles_path
		else
			render "new"
		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(params[:article].permit(:title, :author, :content))
			redirect_to article_path(@article)
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end

end
