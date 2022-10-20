class PostsController < ApplicationController
  
  def index
    render({:template => "/post_templates/index.html.erb"})
  end

  def new
    render({:template => "/post_templates/new_post_form.html.erb"})
  end
end
