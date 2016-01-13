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
Role.delete_all

["Admin", "Editor", "Visitor"].each do |role|
	Role.create!(:name => role)
end

(0..200).each { |i| Role.create!(:name => "Role_#{i}") }
(0..1000).each { |i| Action.create!(:name => "Action_#{i}") }
(0..200).each do |i| 
	role = Role.find_by_name("Role_#{i}") 
	role.actions = Action.all
end

category = ActionCategory.create!({:name => "Post_Category", display_sort_order:1 , :active => true})

["create_post", "update_post", "remove_post", "create_tag", "remove_tag"].each do |action|
	Action.create!({:name => action})
end

admin_role = Role.find_by_name("Admin")
admin_role.actions = Action.all
admin_role.save!

editor_role = Role.find_by_name("Editor")
editor_role.actions = [Action.find_by_name("update_post"),Action.find_by_name("create_tag")]
editor_role.save!

user = User.new
user.email = 'admin@admin.local'
user.password = '12345678'
user.roles= [admin_role]
user.save!

editor_user = User.new
editor_user.email = 'editor@bloge.com'
editor_user.password = '12345678'
editor_user.roles= [Role.find_by_name("Editor")]
editor_user.save!

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