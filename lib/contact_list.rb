class ContactList

  def initialize
    @list = []
  end

  def add_new_contact(name)
    @list << name
  end

  def list
    @list.sort
    #_by { |key, value| value }
  end

end
