# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# (1001..500000).each_with_index do |index|
# 	Event.create(:name => "event_no_#{index}", :payload => {no: index, ages: [rand(index),index*3.14]})
# end
User.delete_all
Group.delete_all
Tag.delete_all
Comment.delete_all
Post.delete_all
PostsTag.delete_all

user = User.new
user.email = 'admin@admin.local'
user.password = '12345678'
user.save!

group = Group.create!(:name => 'general')
Tag.create!((1..3).map { |i| {:name => "tag_#{i}"}})

post = Post.create!(
	{
		:title => 'init post', 
		:content => 'init content', 
		:cdate => DateTime.now, 
		:user_id => user.id,
		:group_id => group.id
	})