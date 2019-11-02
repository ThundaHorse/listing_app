class Api::UsersController < ApplicationController
  def show 
    @user = User.find(params[:id])
    render "show.json.jbuilder"
  end 

  def create 
    user = User.new(
                    first_name: params[:first_name],
                    last_name: params[:last_name],
                    email: params[:email],
                    phone_number: params[:phone_number],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )

    if user.save
      # render json: {message: 'User created successfully'}, status: :created
      render json: {message: 'OK'}, status: 200
    else
      render json: {errors: user.errors.full_messages}, status: :bad_request
    end
  end 

  def update 
    @user = User.find(params[:id])
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.phone_number = params[:phone_number] || @user.phone_number
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password 
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation

    if @user.save 
      render json: { message: "Updated successfully" }
    else 
      render json: { errors: user.errors.full_messages }
    end
  end 

  def destroy 
    @user = User.find(params[:id]) 
    @user.delete
    render json: { message: "Deleted successfully" }
  end 
end
