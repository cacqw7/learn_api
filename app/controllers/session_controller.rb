class SessionController < ApplicationController

  def index
    user = GithubApi.new(params[:access_code]).get_user
    render json: user
  end

  def fetch
    user = User.find_by(code: params[:access_code])
    render json: user
  end

  def logout
    user = User.find_by(code: params[:access_code])
    user.code = "0"
  end
end
