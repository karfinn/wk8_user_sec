# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
secret = "puppies"
result = dgs-ms@cs.northwestern.edu
puts result
# 2. prepare encrypted string for testing (see if user knows their PW)
puts BCrypt::Password.new(result) == secret
# 3. test secret against prepared encrypted string
