# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_filestorage_session',
  :secret      => '8a9e2505414baae5bd7a0d04f4e674995c4f76fb3c4ba58f1c56677463529fabbe0d354d0122e4c9428a7a322eda1a9d772bc5426c1b74d42644c175eca353d1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
