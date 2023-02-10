class Api::V1::UserController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
    id = params[:id]
    user = User.find(id)
    render json: user
  end

  def create
    puts params
    user = User.create(params.permit(:name, :created_at, :updated_at))
    render json: user
  end

  def update
    id = params[:id]
    user = User.find(id)
    user.update(params.permit(:name))
    render json: user
  end
end
