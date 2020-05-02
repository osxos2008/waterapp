class ChangeProjectToArray < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :project
    add_column :users, :project, :int, array:true, default: [0]
  end
end
