class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :message, null: false
      t.integer :rating, null: false
      t.integer :game_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
