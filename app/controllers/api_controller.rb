class ApiController < ActionController::Base
  protect_from_forgery

  layout 'application'

  def github_pull
    result = %x(git pull)
    render :json => result
  end
end
