class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :tweet

  def self.search(search)
    if search
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
  end
end
