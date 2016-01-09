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

require 'test_helper'

class PostsTagTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
