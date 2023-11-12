class Users::UnlocksController < Devise::UnlocksController
  def new
    render 'devise/unlocks/new'
  end
end
