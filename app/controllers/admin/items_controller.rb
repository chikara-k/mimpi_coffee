class Admin::ItemsController < ApplicationController
   #？ before_action :authenticate_admin!  全部完了したらコメント外す
  
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.genre_id = -1 #? genreテーブルの値がないので入れないとエラーになる。(対応方法はgenreを作ってからという形にするかschemaのdefault値を設定する。)
    if @item.save
      flash[:success] = "新商品を登録しました"
      redirect_to admin_item_path(@item)
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
     @item.genre_id = -1 #? genreテーブルの値がないので入れないとエラーになる。(対応方法はgenreを作ってからという形にするかschemaのdefault値を設定する。)
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      flash[:success] = "商品内容を変更しました"
      redirect_to admin_item_path(@item)
    else
      render :edit
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      flash[:success] = "商品内容を削除しました"
      redirect_to admin_items_path
    else
      render :index
    end
  end

  private

  def item_params
    params.require(:item).permit(:genre_id, :name, :image, :taste_bitter, :taste_sour, :taste_aroma, :taste_body, :roasting_level, :introduction, :price, :is_sales)
  end
end
