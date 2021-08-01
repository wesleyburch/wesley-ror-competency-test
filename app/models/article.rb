class Article < ApplicationRecord
	belongs_to	:user
	belongs_to :category
	validates :content, presence: true
	validates :title, presence: true
end
