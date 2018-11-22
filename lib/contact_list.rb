require 'rubygems'
require 'json'

class ContactList

attr_accessor :list, :file_agenda

  def initialize
    file_agenda = File.read("./lib/file_agenda.json")
    @list = JSON.load(file_agenda)
    # self.get_contacts_from_file("./lib/file_agenda.json").each do |contact|
    #   @list << contact
    # end
  end

  def get_contacts
    @list
  end

  def add_contact(first_name, last_name, email, phone)
    # print "Add a new contact"
    # new_contact = $stdin.gets.chomp
    new_contact = Person.new(first_name, last_name, email, phone)
    @list << {
        "first_name" => first_name,
        "last_name" => last_name,
        "email" => email,
        "phone" => phone
      }
      # p @list
      json_file = File.read("./lib/file_agenda.json")
      current_contacts = JSON.load(json_file)
      current_contacts << {
          first_name: first_name,
          last_name: last_name,
          email: email,
          phone: phone
        }
        delete_all_contacts
        File.write("./lib/file_agenda.json", current_contacts.to_json)
  end

  def delete_all_contacts
    File.open("./lib/file_agenda.json", 'w') {|file| file.truncate(0) }
    File.write("./lib/file_agenda.json", "[]")
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
