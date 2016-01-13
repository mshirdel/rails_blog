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

class ActionCategory < ActiveRecord::Base
	has_many :actions
end
