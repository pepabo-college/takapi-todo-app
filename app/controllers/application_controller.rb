class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  USERS = { ENV['USER'] => ENV['PASS'] }

  before_action :digest_auth

  def digest_auth
    authenticate_or_request_with_http_digest do |user|
      USERS[user]
    end
  end

end
