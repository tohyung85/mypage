class Comment < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 3}
  validates :content, presence: true, length: {minimum: 3}
  validates :poster_name, presence: true, length: {minimum: 3}
end
