class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmarks = Bookmark.new(bookmark_params)
    @bookmarks.save
  end

  def destroy
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
