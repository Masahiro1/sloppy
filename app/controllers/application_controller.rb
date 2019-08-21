class ApplicationController < ActionController::Base
  include Jpmobile::ViewSelector

  def after_sign_in_path_for(resource)
    channels_show_path
  end
end
