class AddEasyAndHardColumnToGame < ActiveRecord::Migration
  def change
    add_column :games, :easy, :boolean, default: false
    add_column :games, :hard, :boolean, default: false
  end
end
