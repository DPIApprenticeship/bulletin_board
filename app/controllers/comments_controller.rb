class CommentsController < ApplicationController
  def create
    post_id = params.fetch(:id).to_i
    content = params.fetch(:content)

    comment = Comment.new
    comment.post_id = post_id
    comment.content = content

    comment.save

    redirect_to("/posts/#{post_id}")
  end

  def destroy
    id = params.fetch(:id)
    comment = Comment.where({:id => id}).first
    post_id = comment.post_id
    comment.destroy

    redirect_to("/posts/#{post_id}")
  end
end
