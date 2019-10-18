class Api::ListingsController < ApplicationController
  # before_action :authenticate_user
   
  def index 
    @listings = Listing.all
    render "index.json.jbuilder"
  end 

  def create 
    @listing = Listing.new(
                          user_id: current_user.id,
                          title: params[:title]
                          )
    if @listing.save
      render "show.json.jbuilder" 
    else 
      render json: { message: @listing.errors.full_messages }
    end 
  end 

  def show 
    @listing = Listing.find(params[:id])
    render "show.json.jbuilder"
  end 

  def user_listings 
    @listings = Listing.where(user_id: current_user.id)
    render "user_listings.json.jbuilder"
  end 

  def update 
    @listing = Listing.find(params[:id])
    @listing.user_id = params[:user_id] || @listing.user_id 
    # @listing.item_id = params[:item_id] || @listing.item_id 
    @listing.title = params[:title] || "Post"

    if @listing.save 
      render "show.json.jbuilder" 
    else 
      render json: { message: @listing.errors.full_messages }
    end 
  end

  def destroy 
    @listing = Listing.find(params[:id])
    @listing.delete 
    render json: { message: "Deleted successfully" }
  end 
end
