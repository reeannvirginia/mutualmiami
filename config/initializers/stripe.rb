Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_j3F39hNFF3YMGqORDlvORGVh'],
  :secret_key      => ENV['sk_test_IVjM6GEWXRLCt4eC23mKETuX']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
