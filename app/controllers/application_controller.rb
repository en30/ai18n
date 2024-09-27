class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  around_action :switch_locale

  def switch_locale(&action)
    I18n.with_locale(http_accept_language.compatible_language_from(I18n.available_locales) || I18n.default_locale, &action)
  end
end
