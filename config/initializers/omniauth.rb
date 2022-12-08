Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "6c4f52f65d087a5f0259", "6dfe782c3645e52aacc232fab2baea29ec48f09c"
  else
    provide :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end