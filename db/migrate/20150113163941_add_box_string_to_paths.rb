class AddBoxStringToPaths < ActiveRecord::Migration
  def change
    add_column :paths, :red_boxes, :string
    add_column :paths, :green_boxes, :string
    add_column :paths, :cyan_boxes, :string
    add_column :paths, :white_boxes, :string
    add_column :paths, :purple_boxes, :string
    add_column :paths, :orange_boxes, :string
    add_column :paths, :darkred_boxes, :string
    add_column :paths, :pink_boxes, :string
    add_column :paths, :yellow_boxes, :string
    add_column :paths, :blue_boxes, :string
    add_column :paths, :win_boxes, :string
  end
end
