require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sloppy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Don't generate system test files.
    config.generators.system_tests = nil

    # 以下追加 --------------------------------------------

    # rails g controller ～でhelperやsassが作られない様に
    config.generators do |g|
        # g.assets false # g chennel で jsが作られなくなるのでコメントアウト
        g.helper false
        g.test_framework false
    end

    # 日本語化
    config.i18n.default_locale = :ja
    config.time_zone = 'Asia/Tokyo'

    # formでエラーが出た時<div class="field_with_error">で囲まれないようにする
    config.action_view.field_error_proc = Proc.new do |html_tag, instance|
        %Q(#{html_tag}).html_safe
    end
  end
end
