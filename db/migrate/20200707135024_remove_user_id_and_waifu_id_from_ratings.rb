class RemoveUserIdAndWaifuIdFromRatings < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :user_id, :integer
    remove_column :ratings, :waifu_id, :integer
  end
end
