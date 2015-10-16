class GithubApi
  attr_reader :token, :api_info, :code
  attr_accessor :user

  def initialize(code)
    @code = code
    @token = github.get_token(code).token
    create_or_update
  end

  def get_user
    @user
  end

private
   def github
    @github ||= Github.new client_id: ENV['LEARN_GITHUB_CLIENT_ID'], client_secret: ENV['LEARN_GITHUB_CLIENT_SECRET']
   end

   def create_or_update
     api_info = HTTParty.get("https://api.github.com/user?access_token=#{token}")
     @user = User.find_or_create_by(login: api_info["login"])
     @user.update_attributes(api_attributes(api_info))
   end

   def api_attributes(info)
     {
       login: info["login"],
       avatar_url: info["avatar_url"],
       github_url: info["html_url"],
       name: info["name"],
       company: info["company"],
       location: info["location"],
       email: info["email"],
       bio: info["bio"],
       code: code
     }
   end
end
