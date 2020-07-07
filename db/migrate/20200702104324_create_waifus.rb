class CreateWaifus < ActiveRecord::Migration[6.0]
  def change
    create_table :waifus do |t|
      t.string :name
      t.string :anime
      t.string :image_url
      t.integer :rating

      t.timestamps
    end
  end
end
