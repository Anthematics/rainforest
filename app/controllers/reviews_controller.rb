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
		@product = Product.find(params[:product_id])
		@review = @product.reviews.find(params[:id])
		@review.destroy
		flash[:notice] = "You have successfully deleted the review "
		redirect_to "/products"
	end

	def edit
		puts "paraksb hash ios #{params}"
		@product= Product.find(params[:product_id])
		@review = Review.find(params[:id])

	end

	def update
		@product= Product.find(params[:product_id])
		@review = Review.find(params[:id])
		@review.comment = params[:review][:comment]
		@review.rating= params[:review][:rating]

		if @review.save
			flash[:notice] = "You have successfully changed your review"
			redirect_to "/products/#{@product.id}"
		else
			render :edit
		end
	end
end
