class FollowsController < ApplicationController
  def create
    begin
      @user = current_user #this will be change once we add login
      @followed_user = User.find(params[:follow])
      raise if @user == @followed_user #don't let usrs follow themselves
      Follow.create user: @user, follows: @followed_user
      redirect_to_user_path(@followed_user)
    end  
  end
  
  def destroy
    begin
      @user = current_user #this will change once we add login
      @followed_user = User.find(params[:follow])
      Follow.find_by_user_id_and_follows_id(@user.id, @followed_user.id).destroy
      redirect_to user_path(@followed_user), notice: 'Unfollowed' + @followed_user.username
    rescue
      redirect_to_user_path(@followed_user)
    end
  end      
end  
  
  
  
  
  
 