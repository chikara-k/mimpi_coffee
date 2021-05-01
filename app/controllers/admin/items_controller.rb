class Admin::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = ""
      redirect_to admin_item_path(@item)
    else
      @items = Item.all
    end
  end

  def show
  end

  def edit
  end

  def update
  end
end
