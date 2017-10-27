class Api::V1::LoginsController < Api::V1::ApiController

  def auth
    @user = User.find_by(email: params[:email])

    render json: { user: @user, authenticated: true }
  end
end
