require 'contact_list'
require 'person'
require 'console'

class Console
# contact_list = ContactList.new
# contact_list.add_new_contact(first_name, last_name, email, phone)
  def initialize(contact_list, input = $stdin, output = $stdout)
    @contact_list = contact_list
    @input = input
    @output = output
  end

  def start
    puts "WELCOME TO YOUR CONTACT MANAGER"
    puts "Please, choose a number in the following list:"
    puts "1. See the list of contacts"
    puts "2. Add a new contact"
    puts "3. Modify a contact"
    puts "4. Delete a contact"
    puts "5. Search by..."
    #puts "> #{choice}"
    choice = @input.gets.strip.downcase
    case choice
    when 1.to_s #show me the list
      console_contact
    when 2.to_s #add a new contact
      add_new_contact
    when 3.to_s #modify a contact
      modify_contact
    when 4.to_s #delete a contact
      delete_contact
    when 5.to_s #search by key/value
      search_by
    else
      @output.puts("You broke me!")
    end
  end

  def console_contact
    text = ""
    @contact_list.get_contacts.each do |contact|
      text += "Firstname: " + contact["first_name"].to_s + "\n"
      text += "Lastname : " + contact["last_name"].to_s + "\n"
      text += "Email    : " + contact["email"].to_s + "\n"
      text += "Phone    : " + contact["phone"].to_s + "\n"
      text +=  + "\n"
    end
    @output.puts(text)
  end

  def add_new_contact
    text = ""
      print "First name: "
      text = @input.gets.strip.downcase.to_s + "\n"
      print "Last name: "
      text = @input.gets.strip.downcase.to_s + "\n"
      print "Email: "
      text = @input.gets.strip.downcase.to_s + "\n"
      print "Phone: "
      text = @input.gets.chomp.to_i + "\n"
    end
end
