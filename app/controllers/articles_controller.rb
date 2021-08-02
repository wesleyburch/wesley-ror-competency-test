class ArticlesController < ApplicationController
	before_action :set_article, only: [:edit, :update, :destroy, :show]
	before_action :set_categories, only: [:new, :edit, :create]
	before_action :authenticate_user!, except: :index
	access all: [:index], user: {except: [:new, :edit, :create, :udpate, :destroy]}, editor: :all, admin: [:index, :show]


	def index
		@articles = @user ? Article.active : Article.active.last(3)
	end

	def show
		@article
	end

	def new
		@article = Article.new
		@categories
	end

	def edit
		@categories
	end

	def create
		@categories
		@article = Article.new(article_params)
		
		respond_to do |format|
			if @article.save!
					format.html { redirect_to @article, notice: 'Article was successfully created.' }
					format.json { render :show, status: :created, location: @article }
			else
					puts @article.errors
					format.html { render :new, notice: @article.errors }
					format.json { render json: @article.errors, status: :unprocessable_entity }
			end
		end
		
	end

	def update
		respond_to do |format|
			if @article.update(article_params)
					format.html { redirect_to @article, notice: 'Article was successfully updated.' }
					format.json { render :show, status: :ok, location: @article }
			else
					format.html { render :edit }
					format.json { render json: @article.errors, status: :unprocessable_entity }
			end
		end
		
	end

	def destroy
		@article.destroy
			respond_to do |format|
			format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

private

	def set_article
		@article = Article.find(params[:id])
	end

	def set_categories
		@categories = Category.all
	end

	def set_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:title, :content, :category_id, :user_id, :archived)
	end

end