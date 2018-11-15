class Person
  attr_accessor :first_name, :last_name, :phone, :email

  def initialize(first_name, last_name, email, phone)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @phone = phone
  end

end
