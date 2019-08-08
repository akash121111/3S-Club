Rails.configuration.stripe = {
  :public_key => Rails.application.secrets.public_key,
  :secret_key      => Rails.application.secrets.secret_key
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
