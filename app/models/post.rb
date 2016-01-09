# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  cdate      :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  group_id   :integer
#  user_id    :integer
#

class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  belongs_to  :group
  has_and_belongs_to_many :tags
  validates :title, presence: true
  validates :content, presence: true
  
  def self.csv_header
    #Using ruby's built-in CSV::Row class
    #true - means its a header
    CSV::Row.new([:title, :content, :cdate], ['Title', 'Content', 'CDate'], true)
  end

  def to_csv_row
    CSV::Row.new(title: title, content: content, cdate: cdate)
  end

  def self.find_in_batches(filters, batch_size, &block)
    #find_each will batch the results instead of getting all in one go
    where(filters).find_each(batch_size: batch_size) do |transaction|
      yield transaction
    end
  end
end
