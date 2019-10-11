class Api::ItemsController < ApplicationController
  before_action :authenticate_user
  
  def index 
    @items = Item.all
    render "index.json.jbuilder"
  end 

  def create 
    @item = Item.new(
                    name: params[:name],
                    listing_id: params[:listing_id],
                    description: params[:description],
                    price: params[:price]
                    )
    if @item.save
      render "show.json.jbuilder"
    else 
      render json: { message: @item.errors.full_messages }
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

    if @item.save 
      render "show.json.jbuilder" 
    else 
      render json: { message: @item.errors.full_messages }
    end 
  end 

  def destroy 
    @item = Item.find(params[:id]) 
    @item.delete 
    render json: { message: "Deleted successfully" } 
  end 
end 
