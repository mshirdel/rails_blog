# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  payload    :jsonb
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

class Event < ActiveRecord::Base
end
