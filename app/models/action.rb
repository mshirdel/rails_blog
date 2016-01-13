# == Schema Information
#
# Table name: actions
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :string
#  help               :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  action_category_id :integer
#

class Action < ActiveRecord::Base
	belongs_to :action_categories
	has_and_belongs_to_many :role
end
