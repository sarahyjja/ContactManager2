class ContactList
attr_accessor :list

  def initialize
    @list = []
  end

  # def add_new_contact(person)
  #   @list << list.person
  # end

  def add_new_contact(first_name, last_name, email, phone)
    new_contact = Person.new(first_name, last_name, email, phone)
    @list << {
        "first_name" => first_name,
        "last_name" => last_name,
        "email_address" => email,
        "phone_number" => phone
      }
      p @list
  end

  # def list
  #   @list.sort_by do |person|
  #     person.last_name
  #   end
  #   # do |person|
  #   #   person.first_name
  #   # end
  #   #_by { |key, value| value }
  # end

# def search(last_name)
#   @list.map { |person| person == last_name}
# end
end
