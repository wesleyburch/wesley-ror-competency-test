class ArticlesController < ApplicationController
	access all: [:index], user: {only: [:index]}, editor: :all, admin: {[:index, :show]}

	def index
		@articles = Article.all()
	end
	
	def show
		
	end
end