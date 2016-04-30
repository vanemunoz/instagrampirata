class Post < ActiveRecord::Base
    belongs_to :user
    has_attached_file :image, :styles => { :medium => "640x", :thumb => "100x100>" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    has_many :comments, dependent: :destroy
end
