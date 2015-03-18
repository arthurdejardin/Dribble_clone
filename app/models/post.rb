class Post < ActiveRecord::Base
	acts_as_votable
	has_attached_file :image, styles: { medium: "700x500#", small: "300x250>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	belongs_to :user
	has_many :comments
end
