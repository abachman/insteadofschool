# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_insteadofschool_session',
  :secret      => '6c5613b1cf7de03b555d95a9b75668e096ec47525af86878fc794ed105f46e6397fefb7cda01c76a2a316d986dc1ce60a70be99146ecc28289a89818bd5ab5fa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
