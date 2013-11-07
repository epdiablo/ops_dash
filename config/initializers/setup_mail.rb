ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "songza.com",  
  :user_name            => "adopsdashboard@songza.com",  
  :password             => "songzamedia100",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
} 