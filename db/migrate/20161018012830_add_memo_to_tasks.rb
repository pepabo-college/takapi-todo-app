class AddMemoToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :memo, :text
  end
end
