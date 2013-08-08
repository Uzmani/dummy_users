class User < ActiveRecord::Base
  validates :email, format: { with: /.+@.+\..+/i, message: "Invalid email!" }

  def self.authenticate(passed_email, password)
    # if email and password correspond to a valid user, return that user
    # otherwise, return nil
    user = User.find_by_email(passed_email)
    checked_password = BCrypt::Password.new(user[:password].to_s)
    if checked_password == password
      return user[:id]
    else
      return nil
    end
  end  
end
