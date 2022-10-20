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
end
