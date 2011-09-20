module PublicHelper

  def user_likes_page?
	fb_request = parse_signed_request
	return fb_request['page']['liked'] if fb_request && fb_request['page']
  end

  def parse_signed_request
	if params[:signed_request].present?
	logger.info "===========signed request==========" + params[:signed_request].to_s
	sig, payload = params[:signed_request].split('.')
	logger.info "===========sig==========" + sig.to_s
	payload += '='  * (4 - payload.length.modulo(4))
	logger.info "===========payload==========" + payload.to_s
	payload = payload.tr('-_','+/')
	data = Base64.decode64( payload )
	JSON.parse(data)
	end
	rescue Exception => e
	Rails.logger.warn "errrrrrrrrrrror"
	Rails.logger.warn e.message
  end

end
