#encoding:utf-8
class User < ActiveRecord::Base
  attr_accessible :hashed_password, :name, :salt,:password

  def password
    @password="nil"

   end
  def password=(password)
     @password = password
    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password,salt)
    end
  end

  def User.authenticate(name,password)
    if user = find_by_name(name)
      if user.hashed_password == encrypt_password(password,user.salt)
        user
      end
    end
  end

  def User.encrypt_password(password,salt)
    Digest::SHA2.hexdigest(password + "wibble" + salt)
  end

  private

  def password_must_be_present
    errors.add(:password,"密码或账户错误") unless hashed_password.present?
  end


  def generate_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
end
