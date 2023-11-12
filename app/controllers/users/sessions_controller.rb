class Users::SessionsController < Devise::SessionsController
  def new
    @user = resource_class.new(sign_in_params)
    render 'devise/sessions/new'
  end
end
