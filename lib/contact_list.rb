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
        "email" => email,
        "phone" => phone
      }
      p @list
  end

  def sort_by(key)
    @list.sort_by! do |person|
      person[key]
    end
    p @list
  end

  def search(last_name)
    @list.select do |person|
      person["last_name"] == last_name
    end
  end
end
