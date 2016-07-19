class Task < ActiveRecord::Base
	belongs_to :child, class_name:'User', foreign_key: "child_id"
	belongs_to :mother, class_name:'User', foreign_key: "mother_id"

  	validates :title, presence: true
  	validates :mother, presence: true

  	has_attached_file :proof, styles: {
		medium: '300x300>',
		thumb: '100x100'
	}
	validates_attachment_content_type :proof, content_type: /\Aimage/
	validates_attachment_file_name :proof, matches: [/png\Z/, /jpe?g\Z/, /gif\Z/]
	validates_with AttachmentSizeValidator,
		attributes: :proof,
		less_than: 5.megabytes
	do_not_validate_attachment_file_type :proof
end
