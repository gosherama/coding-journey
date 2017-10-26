class AddProjectToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :project, :text
  end
end
