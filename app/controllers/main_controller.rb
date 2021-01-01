class MainController < ApplicationController
	def index
		@posts = Post.all
	end
	def create
		title1 = params[:title]
		content1 = params[:content]
		begin
			content1 ["\n"] = "<br>"
		rescue
			
		end
		Post.create(title: title1, content: content1)
		redirect_to '/'
	end
	def edit
		@post = Post.find(params[:id])
	end
	def update
		@post = Post.find(params[:id])
		title = params[:title]
		content = params[:content]
		begin
			content ["\n"] = "<br>"
		rescue
			
		end
		
		@post.title = params[:title]
		@post.content = params[:content]
		@post.save
		redirect_to '/'
	end
	def delete
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to '/'
	end
end
