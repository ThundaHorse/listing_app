class Api::ItemsController < ApplicationController
  # before_action :authenticate_user
  # before_action :item_params, except: [:index, :show, :delete]

  def index 
    @items = Item.all
    render "index.json.jbuilder"
  end 

  def create 
    @item = Item.new(
                    name: params[:name],
                    listing_id: params[:listing_id],
                    description: params[:description],
                    price: params[:price],
                    photos: params[:photos]
                    )
    
    if @item.save
      render "show.json.jbuilder"
    else 
      render json: { message: @item.errors.full_messages }, status: :unprocessable_entity
    end 
  end 
  
  def show 
    @item = Item.find(params[:id])
    render "show.json.jbuilder"
  end 
  
  def update 
    @item = Item.find(params[:id])
    @item.name = params[:name] || @item.name 
    @item.listing_id = params[:listing_id] || @item.listing_id 
    @item.description = params[:description] || @item.description 
    @item.price = params[:price] || @item.price
    @item.photos = params[:photos] || @item.photos
    
    if @item.save 
      render "show.json.jbuilder" 
    else 
      render json: { message: @item.errors.full_messages }
    end 
  end 
  
  def destroy 
    @item = Item.find(params[:id]) 
    listing = Listing.find(@item.listing_id)
    if listing.user_id == current_user.id 
      @item.delete 
      render json: { message: "Deleted successfully" } 
    else 
      render json: { message: "This is not your item to delete" }
    end 
  end 

  def user_items 
    @items = Item.where(listing_id: params[:id])
    render "index.json.jbuilder"
  end 

  private
    def item_params
      params.require(:item).permit(:name, :listing_id, :description, :price, photos: [])   
    end
end 
