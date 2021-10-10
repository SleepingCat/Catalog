class Section < ApplicationRecord
	has_many :books, dependent: :destroy
	belongs_to :section, class_name: 'Section', foreign_key: 'Parent_ID', optional: true
	validates :Name, presence: true
	validates :Name, uniqueness: { scope: :Parent_ID } 
end
