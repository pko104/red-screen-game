class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :review_message, null: false
      t.integer :rating_number, null: false
      t.integer :game_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
