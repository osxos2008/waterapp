class AddProjectToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :project, :integer, default: 0
  end
end
