if Rails.env.production?
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
  	address:              'smtp.sendgrid.net',
  	port:                 587,
  	domain:               'podcasteee.herokuapp.com',
  	user_name:            ENV["SENDGRID_USERNAME"],
  	password:             ["SENDGRID_PASSWORD"],
  	authentication:       'plain',
  	enable_starttls_auto: true  }
end