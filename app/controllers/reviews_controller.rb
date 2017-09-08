class ReviewsController < ApplicationController

	def index
		@reviews = Review.all
	end


	def new
		@review = Review.new
	end

	def show
	 @review = Review.find(params[:id])
	end

	def create
		@product =Product.find(params[:product_id])
		@review = @product.reviews.new #associates the two common elements of the join table (the foreign key)
		#  that way they can connect and the reviews can properly show on the product show page.
		@review.comment = params[:review][:comment]
		@review.rating = params[:review][:rating]

		if @review.save
			flash[:notice] = "You have successfully added a review "
			redirect_to "/products/#{@product.id}"
		else
			render "/products/show"
		end
	end
	def destroy
		@review = Review.find(params[:id])
		@review.destroy
		flash[:notice] = "You have successfully deleted the review "
		redirect_to "/reviews"
	end

	def edit
		@review = Review.find(params[:id])
	end

	def update
		@review = Review.find(params[:id])

		@review.comment = params[:review][:comment]
		@review.rating= params[:review][:rating]
		@review.product_id = params[:review][:product_id]

		if @review.save
			flash[:notice] = "You have successfully changed #{@review.name} "
			redirect_to "/reviews/#{@review.id}"
		else
			render :edit
		end
	end
end
