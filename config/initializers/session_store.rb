# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Scituate_session',
  :secret      => '2a30a06cb6afb28833597035b34e3ccf65696183ef8fd48bfbc1f9010d617cce3ece9d2d3eea1bedca1ee5eb08ff50bb0273c8294033a6bb9ade397a7a1b3103'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
