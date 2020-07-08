class WaifusController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @waifus = Waifu.all
  end

  def show
    @waifu = Waifu.find(params[:id])
  end

  def new
    @waifu = Waifu.new
  end

  def edit
    @waifu = Waifu.find(params[:id])
  end

  def create
    @waifu = Waifu.new(waifu_params)

    if @waifu.save
      redirect_to @waifu
    else
      render 'new'
    end
  end

  def update
    @waifu = Waifu.find(params[:id])

    if @waifu.update(waifu_params)
      redirect_to @waifu
    else
      render 'edit'
    end
  end

  def destroy
    @waifu = Waifu.find(params[:id])
    @waifu.destroy

    redirect_to waifus_path
  end

  private
    def waifu_params
      params.require(:waifu).permit(:name, :anime, :image_url, :image)
    end
end
