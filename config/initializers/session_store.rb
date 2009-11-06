# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_todolist_session',
  :secret      => '699266f07176ee4caf98f55e15f8f92cef0ed943e49fca8b8973433d43aea3efb61cacaa4a2c9d55fd6c0af6702634232989b8b9b9246ef1ce8391bd4027d907'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
