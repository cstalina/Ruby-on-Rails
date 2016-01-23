# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_version_session',
  :secret      => '5332415a701838e041396f209b81e871bc1de9d130dfc50f2e3628b734560b6eff2fdf6c563aeececb82f005a6ce4e57cfac21eef1ffc0933bc974abba177acd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
