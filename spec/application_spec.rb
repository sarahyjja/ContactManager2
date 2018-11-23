require 'stringio'
require 'application'

RSpec.describe Application do

  it 'ask to see the list of contacts' do
    contact_list = MockContactList.new
    input = StringIO.new
    output = StringIO.new
    console = Application.new(contact_list, input, output)
    console.start
    console.console_contact
    expect(output.contact_list).to match([])
  end

  it 'ask to add a contact' do
    #contact_list = MockContactList.new
    input = StringIO.new("1")
    output = StringIO.new
    console = Application.new(contact_list, input, output)

    console.start

    expect(output.string).to match("Firstname: Joe\n")
    expect(output.string).to match("Lastname : Bloggs\n")
    expect(output.string).to match("Email    : joe.bloggs@example.com\n")
    expect(output.string).to match("Phone    : 12345678901\n\n")
  end
end

class MockContactList
  def get_contacts
    [{
      "first_name" => "Joe",
      "last_name" => "Bloggs",
      "email" => "joe.bloggs@example.com",
      "phone" => 12345678901
    }]
  end
end
