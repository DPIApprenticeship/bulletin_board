# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  content    :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
  validates(:title, { :presence => true } )
  validates(:content, { :presence => true })

  def comments
    return Comment.where({:post_id => self.id})
  end
end
