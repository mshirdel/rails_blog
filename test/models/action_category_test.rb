# == Schema Information
#
# Table name: action_categories
#
#  id                 :integer          not null, primary key
#  name               :string
#  display_sort_order :integer
#  active             :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ActionCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
