# == Schema Information
#
# Table name: posts_tags
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#  tag_id     :integer
#

class PostsTag < ActiveRecord::Base
end
