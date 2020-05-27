class PagesController < ApplicationController
  def home
    @rooms = Room.where(active: true).limit(9)
  end

  # 検索
  def search
    @arrRooms = Room.where(active: true).all.search(params[:q])
  end
end
