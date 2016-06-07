class Task < ActiveRecord::Base
	belongs_to :child, class_name:'User', foreign_key: "child_id"
	belongs_to :mother, class_name:'User', foreign_key: "mother_id"
end
