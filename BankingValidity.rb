require_relative "validity"

# Users = []

module BankingValidity
  def registration_validity(name, email, password, confirm)
    b.validate_name(name)
    b.validate_email(email)
    b.validate_password(password, confirm)  
    
  #     Users[Users.length] = [name, email, password, 0, []]

  #     File.open(FILE, "a") do |file|
  #       file.puts "#{name}|#{email}|#{password}|0"
  #    end
  end



end

class Bank
  include Validity
end
b = Bank.new