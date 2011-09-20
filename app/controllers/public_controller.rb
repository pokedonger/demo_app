class PublicController < ApplicationController
  def index
    if cookies[:has_info] && cookies[:has_video]
	  render("thankyou")
	elsif cookies[:has_video]
	  render("thankyou")
	elsif cookies[:has_info] && cookies[:has_video] == nil
	  redirect_to(:controller => "upload_vid", :action => "index", :user_id => cookies[:user_id])
    end
  end
  
  def upload_video
  end

  def thankyou
  end
  
end
