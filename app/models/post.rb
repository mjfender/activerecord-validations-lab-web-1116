class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { in: 50..500 }
  validates :summary, length: { in: 1..100 }
  validates :category, inclusion: { in: %w(Fiction Clickbait),
    message: "%{value} is not a valid category" }
  validates :title, exclusion: { in: ["True Facts"] }


end
