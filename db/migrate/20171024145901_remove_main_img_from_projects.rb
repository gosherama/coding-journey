class RemoveMainImgFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :main_img, :text
  end
end
