# storage
# alphabetic order

require 'contact_list'
require 'person'
require 'json'

RSpec.describe ContactList do
  it "Verify if the contact_list is empty" do
    contact_list = ContactList.new
    expect(contact_list.list).to eq([])
  end

  it "hold info inside" do
    contact_list = ContactList.new
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)
    expect(contact_list.list).to eq([{
      "first_name" => "Sarah",
      "last_name" => "Kharraz",
      "email" => "sarah@example.com",
      "phone" => 012344556
    }])
  end

  it "stores multiple contacts" do
    contact_list = ContactList.new

    contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)

    expect(contact_list.list).to eq([{
        "first_name" => "Marion",
        "last_name" => "Faceless",
        "email" => "marion@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "John",
        "last_name" => "Smith",
        "email" => "john@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "Sarah",
        "last_name" => "Kharraz",
        "email" => "sarah@example.com",
        "phone" => 012344556
      }])
  end


  it "displays a list in alphabetical order by last_name" do
    contact_list = ContactList.new
    contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)

    expect(contact_list.sort_by("last_name")).to eq([{
        "first_name" => "Marion",
        "last_name" => "Faceless",
        "email" => "marion@example.com",
        "phone" => 012344556
        },
        {
        "first_name" => "Sarah",
        "last_name" => "Kharraz",
        "email" => "sarah@example.com",
        "phone" => 012344556
        },
        {
        "first_name" => "John",
        "last_name" => "Smith",
        "email" => "john@example.com",
        "phone" => 012344556
        }])
  end

  it "displays a list in alphabetical order by first_name" do
    contact_list = ContactList.new
    contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)

    expect(contact_list.sort_by("first_name")).to eq([{
        "first_name" => "John",
        "last_name" => "Smith",
        "email" => "john@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "Marion",
        "last_name" => "Faceless",
        "email" => "marion@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "Sarah",
        "last_name" => "Kharraz",
        "email" => "sarah@example.com",
        "phone" => 012344556
        }])
  end

  it "displays a list in alphabetical order by email" do
    contact_list = ContactList.new
    contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)

    expect(contact_list.sort_by("email")).to eq([{
        "first_name" => "John",
        "last_name" => "Smith",
        "email" => "john@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "Marion",
        "last_name" => "Faceless",
        "email" => "marion@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "Sarah",
        "last_name" => "Kharraz",
        "email" => "sarah@example.com",
        "phone" => 012344556
        }])
  end

  it "search for a contact by last_name and view their details" do
    contact_list = ContactList.new
    contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)

    expect(contact_list.search("Kharraz")).to eq([{
      "first_name" => "Sarah",
      "last_name" => "Kharraz",
      "email" => "sarah@example.com",
      "phone" => 012344556
      }])
  end

  it "search for a contact by any key and view their details" do
    contact_list = ContactList.new
    contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)

    expect(contact_list.search_by("first_name", "Sarah")).to eq([{
      "first_name" => "Sarah",
      "last_name" => "Kharraz",
      "email" => "sarah@example.com",
      "phone" => 012344556
      }])
  end

  it "saves the contacts to a file" do
    contact_list = ContactList.new
    contact_list.add_new_contact("Marion", "Faceless", "marion@example.com", 012344556)
    contact_list.add_new_contact("John", "Smith", "john@example.com", 012344556)
    contact_list.add_new_contact("Sarah", "Kharraz", "sarah@example.com", 012344556)
    contact_list.sort_by("first_name")

    expect(contact_list.file_agenda.empty?).to eq(false)
  end

  it "Load the contacts from that file when restarting the program" do
    contact_list = ContactList.new
    contact_list.sort_by("first_name")

    expect(contact_list.list).to eq([{
        "first_name" => "John",
        "last_name" => "Smith",
        "email" => "john@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "Marion",
        "last_name" => "Faceless",
        "email" => "marion@example.com",
        "phone" => 012344556
      },
      {
        "first_name" => "Sarah",
        "last_name" => "Kharraz",
        "email" => "sarah@example.com",
        "phone" => 012344556
        }])

  end
end
