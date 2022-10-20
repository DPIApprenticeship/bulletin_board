# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#
class Comment < ApplicationRecord
  validates(:content, { :presence => true})
  validates(:post_id, { :presence => true})
end
