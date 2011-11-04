# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

#setup email
Depot::Application.configure do
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => 'dazhichen@gmail.com',
  :password             => 'breadbas1',
  :authentication       => 'plain',
  :enable_starttls_auto => true  }
end
