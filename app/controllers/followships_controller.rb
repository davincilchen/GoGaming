class FollowshipsController < ApplicationController

  def create
    @followship = current_user.followships.build(following_id: params[:following_id])
    @followship.save
    redirect_to users_path
  end

  def destroy
    @followship = current_user.followships.where(following_id: params[:id])
    @followship.destroy_all
    redirect_to users_path
  end


end
