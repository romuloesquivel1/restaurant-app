class Users::PasswordsController < Devise::PasswordsController
  def new
    self.resource = resource_class.new
    render 'devise/passwords/new'
  end
end
