class CustomFailure < Devise::FailureApp
   def redirect_url
    '/auth/google_oauth2'
   end
   def respond
     if http_auth?
       http_auth
     else
       redirect
     end
   end
 end