class WaifusController < ApplicationController
  def index
    @waifus = Waifu.all
  end

  def show
    @waifu = Waifu.find(params[:id])
  end

  def new
  end

  def create
    @waifu = Waifu.new(waifu_params)

    @waifu.save
    redirect_to @waifu
  end

  private
    def waifu_params
      params.require(:waifu).permit(:name, :anime, :image_url, :image)
    end
end
