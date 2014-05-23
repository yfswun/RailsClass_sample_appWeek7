class RelationshipsController < ApplicationController

  before_action :signed_in_user

  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    
    # Standard method
    # redirect_to @user
    
    # Ajax method
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
    # redirect_to @user
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
  
end
