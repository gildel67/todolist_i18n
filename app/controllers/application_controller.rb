# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  before_filter :set_locale

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def set_locale
    locale = params[:locale] || 'en'
    I18n.locale = locale
    I18n.load_path += Dir[ File.join(RAILS_ROOT,'config','locales','*.{rb,yml}')]
  end

end
