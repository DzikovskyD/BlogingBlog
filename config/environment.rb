# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!


# ActionMailer::Base.delivery_method = :smtp

# ActionMailer::Base.smtp_settings = {
#    :address => "smtp.bk.ru",
#    :port => 25,
#    :domain => "bk.com",
#    :authentication => :login,
#    :user_name => "ddzk",
#    :password => "e,fnmghbdtn",
# }


ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.smtp_settings = {
  address:              'smtp.bk.ru',
  port:                 25,
  domain:               'example.com',
  user_name:            'ddzk',
  password:             '',
  authentication:       'cram_md5',
  enable_starttls_auto: true }
