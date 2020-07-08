class RenameRatingInRatings < ActiveRecord::Migration[6.0]
  def change
    rename_column :ratings, :rating, :waifu_rating
  end
end
