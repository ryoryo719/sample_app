# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

def secure_token
	token_file = Rails.root.jpin('.secret')
	if File.exit?(token_file)
		#Use the exiting token.
		File.read(token_file).chomp
	else
		#Generate a new token and store it in token_file.
		token = SecureRandom.hex(64)
		File.write(token_file,token)
		token
	end
end
SampleApp::Application.config.secret_key_base = 'd9ccfffaef24e088c83b83b2c2fd43f85bd19891d9db32af745c82945a1b4e224f33ff4c4dab89f558b2c8a51458017cfec94228f8ecd72560733a9da95a2c7b'
