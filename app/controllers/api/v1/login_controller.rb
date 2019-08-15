class Api::V1::LoginController < Api::V1::BaseController
    skip_before_action :verify_authenticity_token, only: [:create]
    URL = "https://api.weixin.qq.com/sns/jscode2session".freeze

    def wechat_user
        params_new = {
            appId: ENV['APP_ID'],
            secret: ENV['SECRET'],
            js_code: params[:code],
            grant_type: "authorization_code"
        }

        @wechat_response ||= RestClient.get(URL, params: params_new)
        @wechat_user ||= JSON.parse(@wechat_response.body)  
        p @wechat_user
        @wechat_user
    end

    def create
        @user = User.find_or_create_by(open_id: wechat_user.fetch("openid"))
        
        render json: {
          # user: @user
          # userId: @user.id
          user: @user
        }
    end
end
