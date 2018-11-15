class ContactList

  def initialize
    @list = []
  end

  def add_new_contact(person)
    @list << person
  end

  def list
    @list.sort_by do |person|
      person.last_name
    end
    # do |person|
    #   person.first_name
    # end
    #_by { |key, value| value }
  end

def search(last_name)
  @list
end
end
