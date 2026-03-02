module Validity

  def validate_name(name)
    name_regex = "^[A-Za-z]+(['-]A-Za-z )*"

    if !name.match(name_regex)
      raise "Invalid name format"
    end   
  end
  
  def validate_email(email)
    regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/

    if !email.match(regex)
      raise "Invalid email format"
    end
  end

  def validate_pass(password)
     pass_regex = /^[([a-z]|[A-Z])0-9_-]{6,40}$/

    if !password.match(pass_regex)
      raise "must be at least 6 characters and include one number and one letter."
    end
  end

  def validate_password(password, confirm)
    if password != confirm 
      raise "password not match"
    end
  end

  def validate_amount(amount)
    if amount <= 0
      raise "withdrawl amount must be positive"
    end
  end
end