class FormController < ApplicationController
  def registration
  end
  
  def registration_confirmation
  #if prize = 1, scholarship
  #if prize = 2, makeover
  @user = Registration.new(params[:user])
    if @user.terms == '1'
        if @user.save
          cookies[:has_info] = @user.email
		  $user_id = @user.id
		  $user_email = @user.email
          session[:first_name] = @user.first_name
          session[:last_name] = @user.last_name
          session[:email] = @user.email
          redirect_to(:controller => "upload_vid", :action => "index", :user_id => @user.id)
        else
          flash[:notice] = 'All fields are required.'
          render('registration_confirmation')
        end
	else
	flash[:notice] = 'You must agree with the Terms and Condition.'
    render('registration_confirmation')
    end
  end

end
