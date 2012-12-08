ActionMailer::Base.delivery_method = :smtp 
ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => true,
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "harvardhangouts.com",
  :authentication => "login",
  :user_name => "harvardhangouts@gmail.com",
  :password => "cs50hangouts"
}
