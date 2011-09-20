class Registration < ActiveRecord::Base

before_validation :check_fname, :check_lname, :check_address1, :check_address2, :check_state, :check_zip, :check_hsname, :check_hsaddress, :check_hscity, :check_state

email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
phone_regex = /\A\S[0-9\+\/\(\)\s\-]*\z/i

validates(:first_name, :last_name, :email, :state, :zip, :terms, :highschool_name, :highschool_address, :highschool_city, :highschool_phone, :presence => true, :on => :registration)
validates(:highschool_phone, :zip, :length => { :maximum => 11 }, :format => { :with => phone_regex }, :numericality => true)
validates(:email,
		  :format   => { :with => email_regex }
		  )	
		  
end

private

def	check_fname
	if first_name == "First Name*"
	errors.add(:first_name, "")
	end
end

def	check_lname
	if last_name == "Last Name*"
	errors.add(:last_name, "")
	end
end

def	check_address1
	if address1 == "Address1*"
	errors.add(:address1, "")
	end
end

def	check_address2
	if address2 == "Address2*"
	errors.add(:address2, "")
	end
end

def	check_state
	if state == "State*"
	errors.add(:state, "")
	end
end

def	check_zip
	if zip == "Zip*"
	errors.add(:zip, "")
	end
end

def	check_hsname
	if highschool_name == "High School name*"
	errors.add(:highschool_name, "")
	end
end

def	check_hsaddress
	if highschool_address == "High School address*"
	errors.add(:highschool_address, "")
	end
end

def	check_hscity
	if highschool_city == "High School city*"
	errors.add(:highschool_city, "")
	end
end

def	check_state
	if state == "Select state"
	errors.add(:state, "")
	end
end