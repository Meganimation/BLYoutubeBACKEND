class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :genre
      t.string :description
      t.string :title
      t.float :length
      t.string :uploader

      t.timestamps
    end
  end
end
