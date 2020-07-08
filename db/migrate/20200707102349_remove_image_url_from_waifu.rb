class RemoveImageUrlFromWaifu < ActiveRecord::Migration[6.0]
  def change
    remove_column :waifus, :image_url, :string
  end
end
