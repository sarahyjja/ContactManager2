#!/usr/bin/ruby
require 'rubygems'
require 'json'

class ContactList

attr_accessor :list

  def initialize
    @list = []
  end

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

  def search_by(key, search_term)
    @list.select do |person|
      person[key] == search_term
    end
  end


# def save_to_file
#   people = {:first_name => "goodbye"}
#   puts JSON.generate(people) => "{\"first_name\" => \"Marion\"}"
# end
  json = File.read('input.json')
  obj = JSON.parse(json)
#----------------
# def save_to_file(first_name, last_name, email, phone)
#   contact_list = JSON.stringify(first_name, last_name, email, phone)
#   contact_list = JSON.parse(first_name, last_name, email, phone)
# end
#----------------
# def save_to_file
#   File.open("./lib/file_agenda.json", "w") do |file|
#     @list.each do |contact|
#       file << contact
#     end
#   end
#   current_contacts = File.read("./lib/file_agenda.json")
#   current_contacts = JSON.generate({"first_name" => "Marion","last_name" => "Faceless","email" => "marion@example.com","phone" => 012344556})
#   puts JSON.parse(my_string)
# end
#----------------
  # def save_to_file(first_name, last_name, email, phone)
  #   json_string = File.read('./lib/file_agenda.json')
  #   current_contacts = JSON.load(json_string)
  #   current_contacts << {first_name: first_name, last_name: last_name, email: email, phone: phone}
  #   File.write('./lib/file_agenda.json', current_contacts.to_json)
  # end
end
