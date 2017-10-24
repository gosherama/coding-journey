class AddWebsiteToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :website, :text
  end
end
