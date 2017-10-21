class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  acts_as_taggable
end
