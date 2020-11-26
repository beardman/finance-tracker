class UserFriendsController < ApplicationController

  def create
    friend = User.find(params[:friend])
    current_user.friendshipts.build(friend_id: friend.id)
    flash[:notice] = "#{friend.full_name} was successfully added to your friends list"
    redirect_to my_friends_path
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "#{friendship.friend.full_name} was successfully removed from your friends list"
    redirect_to my_friends_path
  end
end