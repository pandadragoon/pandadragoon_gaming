class Post < ActiveRecord::Base
  include Sluggable

  belongs_to :category
  belongs_to :user

  sluggable_column :title
  
  def created_datetime
    created_at.strftime("%B, %d %Y - %I:%M %p %Z")
  end
end
