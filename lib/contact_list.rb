require 'rubygems'
require 'json'

class ContactList

attr_accessor :list

  def initialize(list)
    @list = list
  end

  def get_contacts
    @list
  end

  def add_contact(first_name, last_name, email, phone)
    new_contact = Person.new(first_name, last_name, email, phone)
    @list << {
        "first_name" => first_name,
        "last_name" => last_name,
        "email" => email,
        "phone" => phone
      }
  end

  def delete_all_contacts
    @list = []
  end

  def get_contacts_from_file(json_file)
    file_to_parse = File.read(json_file)
    current_contacts = JSON.parse(file_to_parse)
    current_contacts
  end

  def sort_by(person_detail)
    @list.sort_by! do |person|
      person[person_detail]
    end
  end

  def search(last_name)
    @list.select do |person|
      person["last_name"] == last_name
    end
  end

  def search_by(key, person_detail)
    @list.select do |person|
      person[key] == person_detail
    end
  end


end
