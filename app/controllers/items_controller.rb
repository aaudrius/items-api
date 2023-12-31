# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :set_item, only: %i(show update destroy)

  # GET /items
  def index
    result = Items::Filter.run(params[:brand], params[:status])
    
    render json: result
   
  end

  # GET /items/:id
  def show
    render json: @item
  end

  # POST /items
  def create
    @item = Item.new(item_params)
    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PUT/PATCH /items/:id
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/:id
  def destroy
    @item.destroy
    head :no_content
  end

  private

  def set_item
    @item = Item.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "Item not found" }, status: :not_found
  end

  def item_params
    params.require(:item).permit(:price, :brand, :photo_url, :status, :user_id)
  end
end

