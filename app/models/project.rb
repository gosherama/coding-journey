class Project < ApplicationRecord
    belongs_to :user
    has_attached_file :project_img, styles: { medium: "300x300>", thumb: "150x150>" }, default_url: "/assets/user.png"
    validates_attachment_content_type :project_img, content_type: /\Aimage\/.*\z/
end
