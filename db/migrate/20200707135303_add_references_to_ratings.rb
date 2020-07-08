class AddReferencesToRatings < ActiveRecord::Migration[6.0]
  def change
    add_reference :ratings, :user, foreign_key: true
    add_reference :ratings, :waifu, foreign_key: true
  end
end
