class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :review_message
      t.integer :rating_number
      t.integer :game_id
      t.integer :user_id

      t.timestamps
    end
  end
end
