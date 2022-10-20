class PostsController < ApplicationController
  
  def index
    render({:template => "/post_templates/index.html.erb"})
  end

  def new
    render({:template => "/post_templates/new_post_form.html.erb"})
  end

  def create
    title = params.fetch(:title)
    content = params.fetch(:content)

    post = Post.new
    post.title = title
    post.content = content

    post.save
    redirect_to("/posts/#{post.id}")
  end

  def show
    id = params.fetch(:id)
    @post = Post.where({:id => id}).first
    render({:template => "post_templates/show.html.erb"})
  end
end
