ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :authentication => :plain,
  :domain => 'adcapp.heroku.com',
  :user_name => 'sottenad@gmail.com',
  :password => 'Steve1986!',
  :enable_starttls_auto => true
}