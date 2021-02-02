require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
 config.action_mailer.delivery_method = :smtp
 config.action_mailer.smtp_settings = {
 address:              'smtp.gmail.com',
 port:                  587,
 domain:               'gmail.com',
 user_name:            'kandai.algo@gmail.com',
 password:             'udnxoyxuzqmwmkpe',
 authentication:       'plain',
 enable_starttls_auto:  true
}
  end
end

Sentry.init do |config|
  config.dsn = 'https://5b5c919ade7343afaf932ee127891900@o514948.ingest.sentry.io/5618964'
  config.breadcrumbs_logger = [:active_support_logger]

  # To activate performance monitoring, set one of these options.
  # We recommend adjusting the value in production:
  config.traces_sample_rate = 0.5
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end