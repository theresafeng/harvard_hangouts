# from http://mentalized.net/journal/2012/05/08/rails_3_actionmailer_and_google_apps_for_domains/

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
