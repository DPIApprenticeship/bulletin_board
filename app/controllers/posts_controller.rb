class PostsController < ApplicationController
  
  def index
    @posts = Post.all
    render({:template => "/post_templates/index.html.erb"})
  end

  def new
    render({:template => "/post_templates/post_form.html.erb"})
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

  def edit
    id = params.fetch(:id)
    @post = Post.where({:id => id}).first

    render({:template => "post_templates/post_form.html.erb"})
  end

  def update
    id = params.fetch(:id)
    title = params.fetch(:title)
    content = params.fetch(:content)

    post = Post.where({:id => id}).first
    post.title = title
    post.content = content

    post.save
    redirect_to("/posts/#{post.id}")
  end

  def destroy
    id = params.fetch(:id)
    post = Post.where({:id => id}).first
    post.destroy

    redirect_to("/")
  end
end
