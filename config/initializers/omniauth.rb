OmniAuth.config.allowed_request_methods = [:post, :get]

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter, "0H9xgW4bdKtTUAcZHzjFFJDfq", "UxPjxIdfzOTVj4XITDnKcGa9a7x90JTdemBfe3wIFjVYITy9TL"
end

