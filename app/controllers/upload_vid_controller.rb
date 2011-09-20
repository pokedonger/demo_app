class UploadVidController < ApplicationController
  def index
  current_facebook_user.fetch
    cookies[:user_id] = $user_id
    if current_facebook_user.id.to_s
	  $facebook_id = current_facebook_user.id.to_s
	  @user_fbid = Registration.where("id = ?", $user_id).first
	  @user_fbid.facebook_id = current_facebook_user.id.to_s
	  @user_fbid.save
	end
	
	return
    rescue Exception
      render(:text => "<html><body><script>top.location.href=\"https://graph.facebook.com/oauth/authorize?type=user_agent&client_id=283716454973410&redirect_uri=https://apps.facebook.com/utidemo/upload_vid/index/\";</script></body></html>")
  end
  
  def upload
  end

  def upload_confirmation
    if request.post?
      parsed_json = ActiveSupport::JSON.decode(params[:transloadit].to_s)
	  cookies[:has_video] = parsed_json["results"]["encode"][0]["url"]
	  @video = Video.new
	  @video.facebook_id = $facebook_id
	  @video.email = $user_email
	  
	  @video.thumb_id = parsed_json["results"]["extracted_thumbs"][0]["id"]
	  @video.thumb_original_id = parsed_json["results"]["extracted_thumbs"][0]["original_id"]
	  @video.thumb_url = parsed_json["results"]["extracted_thumbs"][0]["url"]
	  @video.thumb_mime_type = parsed_json["results"]["extracted_thumbs"][0]["mime"]
	  @video.thumb_basename = parsed_json["results"]["extracted_thumbs"][0]["basename"]
	  @video.thumb_extension = parsed_json["results"]["extracted_thumbs"][0]["ext"]
	  
	  @video.video_file_name = parsed_json["results"]["encode"][0]["name"]
	  @video.video_file_size = parsed_json["results"]["encode"][0]["size"]
	  @video.video_mime_type = parsed_json["results"]["encode"][0]["mime"]
	  @video.video_url = parsed_json["results"]["encode"][0]["url"]
	  @video.video_id = parsed_json["results"]["encode"][0]["id"]
	  @video.video_original_id = parsed_json["results"]["encode"][0]["original_id"]
	  @video.video_extension = parsed_json["results"]["encode"][0]["ext"]
	  @video.video_duration = parsed_json["results"]["encode"][0]["meta"]["duration"]
	  #@video.video_unique_prefix = parsed_json["results"]["encode"][0]["id"][2..-1]
	  @video.save
      @video_url = parsed_json["results"]["encode"][0]["url"]
    else
      redirect_to(:action => "upload")
    end
  end

end
