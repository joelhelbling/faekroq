gem 'crypt', '1.1.4'   if RUBY_VERSION == '1.8.7'
gem 'crypt19', '1.2.1' if RUBY_VERSION == '1.9.2'

require 'crypt/rijndael'

module FaekRoq
  KEY = 'A key 16, 24, or 32 bytes length'*4
  @@encrypted = nil

  class << self

    def decrypt
      if @@encrypted
        crypter.decrypt_string @@encrypted
      end
    end

    def password
      decrypt
    end

    def encrypt(password)
      crypter.encrypt_string password
    end

    def password=(new_password)
      @@encrypted = encrypt(new_password)
    end

    def encrypted
      @@encrypted
    end

    def crypter
      @@crypter ||= Crypt::Rijndael.new(KEY)
    end

    def read_from_file(password_file='./.roq')
      @@encrypted = File.read(password_file)
    end

  end
end
