class AdminController < ApplicationController
  before_action :require_user
  def index
    @post = Post.new
  end
end
