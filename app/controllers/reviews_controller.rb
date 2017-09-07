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
    @review = Review.new

    @review.comment = params[:review][:comment]
    @review.rating = params[:review][:rating]
    @review.product_id = params[:review][:product_id]

    if @review.save
      flash[:notice] = "You have successfully added #{@review.name} "
      redirect_to "/reviews"
    else
      render :new
    end
  end
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = "You have successfully deleted #{@review.name} "
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
