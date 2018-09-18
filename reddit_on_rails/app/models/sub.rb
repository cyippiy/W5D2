class Sub < ApplicationRecord
  validates :title, :description, :mod_id, presence:true

  has_many :posts

  belongs_to :mods,
  foreign_key: :mod_id,
  class_name: :User
end