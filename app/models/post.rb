class Post < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  def created_datetime
    created_at.strftime("%B, %d %Y - %I:%M %p %Z")
  end
end
