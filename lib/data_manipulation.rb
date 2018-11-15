class DataManipulation
  require 'person'

    attr_reader :all_contacts, :gabarit_new_person

    def initialize
      @all_contacts = []
      @gabarit_new_person
    end


    def create_new_contact(first_name, last_name, email, phone)
      new_contact = Person.new(first_name, last_name, email, phone)
      @all_contacts <<   {
          "first_name" => first_name,
          "last_name" => last_name,
          "email_address" => email,
          "phone_number" => phone
        }
    end
end
