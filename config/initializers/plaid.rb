$client = Plaid::Client.new(env: :sandbox,
                            client_id: ENV['PLAID_CLIENT_ID'],
                            secret: ENV['PLAID_SECRET_ID'],
                            public_key: ENV['PLAID_PUBLIC_KEY'])
