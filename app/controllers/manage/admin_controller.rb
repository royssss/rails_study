class Manage::AdminController < ApplicationController
  #http_basic_authenticate_with name: "admin", password: "admin"
  USERS = { "admin" => "admin" }
 
  before_action :authenticate
 
  private
 
  def authenticate
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
