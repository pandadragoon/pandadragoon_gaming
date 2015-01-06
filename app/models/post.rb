class Post < ActiveRecord::Base
  include Sluggable

  belongs_to :category
  belongs_to :user

  sluggable_column :title

  default_scope { order('created_at DESC') }

  def created_datetime
    created_at.strftime("%B, %d %Y - %I:%M %p %Z")
  end

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("title LIKE ?", "%#{search_term}%").order("created_at DESC")
  end
end
