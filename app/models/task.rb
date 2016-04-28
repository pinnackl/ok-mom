class Task < ActiveRecord::Base
	belongs_to :mom,   :class_name => 'User'
	belongs_to :child,   :class_name => 'User'
end
