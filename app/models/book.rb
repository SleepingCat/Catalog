class Book < ApplicationRecord
	belongs_to :section, class_name: 'Section', foreign_key: 'Section_ID'
end
