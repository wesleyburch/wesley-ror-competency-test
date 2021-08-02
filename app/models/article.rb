class Article < ApplicationRecord
	belongs_to	:user
	belongs_to :category
	validates :content, presence: true
	validates :title, presence: true

	scope :active, -> { where(archived: [false, '', nil])}

end
