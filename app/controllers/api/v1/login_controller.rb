class Api::V1::LoginController < Api::V1::BaseController
    skip_before_action :verify_authenticity_token, only: [:create]
    before_action :set_user, only:[:show, :update]
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
    end

    def show
        render json: { user: @user }
    end

    def create
        @user = User.find_or_create_by(open_id: wechat_user.fetch("openid"))
        
        render json: {
          user: @user
        }
    end

    def update
        @user.update(user_params)

        render json: {
          user: @user
        }
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:nickname, :avatar)
    end
end
