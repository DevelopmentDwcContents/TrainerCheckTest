class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    favorite.save
    redirect_to request.referer
  end

  def destroy
    @book = Book.find(params[:book_id])
    favorite.destroy
    redirect_to request.referer
  end
end
