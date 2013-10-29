Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '645346844238.apps.googleusercontent.com', 'fhYduWKIV3x-nXh0H8Xp9dqV'
end