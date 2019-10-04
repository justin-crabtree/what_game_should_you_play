class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :summary
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end
