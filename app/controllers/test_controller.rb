require 'json'

class TestController < ApplicationController
  def index
    option_hash = {:auth => {:key => '4eee4c9c36f945d284f80cddd2a8cdfd'},:template_id => '571d1dfaf8564f498d0f3f852b8c98cb', :redirect_url => 'http://localhost:3000/test/next'}
    @options = option_hash.to_json.to_s
  end
  
  def next
  end

end
