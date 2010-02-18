# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_help_to_learn_rspec_session',
  :secret      => 'e2bc5d5f0c8fce4263f1423080f31ffc63d9deebd4cfa681b51bc82d7acdb08453f9faa06b5800ecb8bedeb783023bc2eda0498d6f4355879350132cef686c78'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
