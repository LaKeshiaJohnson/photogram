class Post < ApplicationRecord
	validates :image, presence: true

	has_attached_file :image, styles: { :medium => "640x" }
	validates_attachtment_content_type :image, :conetent_type => /\Aimage\/.*\Z/
end
