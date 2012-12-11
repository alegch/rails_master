class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :body
  has_ancestry

  def self.delete_oldest_one_minutes_commets
    where('created_at < ?', 1.minute.ago).destroy_all

  end
end
