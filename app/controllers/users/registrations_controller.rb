class Users::RegistrationsController < Devise::RegistrationsController
  def new
    self.resource = resource_class.new
    render 'devise/registrations/new'
  end
end
