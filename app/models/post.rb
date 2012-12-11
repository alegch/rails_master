class Post < ActiveRecord::Base
  attr_accessible :body, :title
  validates :title, presence: true
  validates :body, presence: true
  has_many :comments
  state_machine :state, :initial => :draft do
    event :publish do
      transition :draft => :published
    end
  end
end
