require_relative 'contact'

class CRM

  def initialize

  end

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Search by attribute"
    puts "[6] Exit"
    puts "Enter a number:  "
  end

  def call_option
    case user_selected
    # when 1 then add_new_contact
    # when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute
    when 6 then exit
  end

  def add_new_contact
    #same as create new contact in the contact class
  end

  def modify_existing_contact
    #search for existing contact based off id number
    #how do I modify an existing contact?
    # => need to know the object being modified that is contained in the array
    # => this should not delete the old contact but it should modify the specific object
    #returns the new contact information

  end

  def delete_contact
    #look at similar syntax in the contact class
    # will be calling information from the class method of contacts
    #uses #delete method
  end

  def display_all_contacts
    #return the entire array (call on a class variable)
  end

  def search_by_attribute
    #iterate using each which includes the arguement attribute
    #returns the contact information based off input from desired attribute
    # => does this by if statement on the instance variables?
  end


end
