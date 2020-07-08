class RatingsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @waifu = Waifu.find(params[:waifu_id])
    @rating = @waifu.ratings.create(rating_params)

    # user controller

    redirect_to waifu_path(@waifu)
  end

  def destroy
    @waifu = Waifu.find(params[:waifu_id])
    @rating = @waifu.ratings.find(params[:id])
    @rating.destroy
    redirect_to waifu_path(@waifu)
  end

  private
  def rating_params
    params.require(:rating).permit(:waifu_rating)
  end
end
