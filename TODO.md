add :photo to strong params for items
add :avatar to strong params for user


<%= f.label "photo" %>
<%= f.le_field :photo OR :avatar %>

already existing
    @user.avatar.attach(params[:avatar])
adding from file
    @user.avatar.attach(o: File.open('))
    uploaded_io = params[:person][:picture]

def upload
  uploaded_file = params[:picture]
  File.open(Rails.root.join('public', 'uploads', uploaded_file.original_filename), 'wb') do |file|
    file.write(uploaded_file.read)
  end
end




--- 
has many through
<%= form_for post do |f| %>

  <%= f.collection_check_boxes :category_ids, Category.all, :id, :name %>
  <%= f.submit %>
<% end %>
class PostsController < ApplicationController
 
  ...
 
  private
 
  def post_params
    params.require(:post).permit(:title, :content, category_ids:[])
  end
end  

def create
  post = Post.create(post_params)
  redirect_to post
end
creates the post_categories in with it