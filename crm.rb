require_relative './contact'

class CRM

attr_accessor :add_new_contact
attr_reader :name

  def initialize(name)
    @name = name
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

  def call_option(user_selected)
    case user_selected
    when 1 then add_new_contact
    when 2 then modify_existing_contact
    when 3 then delete_contact
    when 4 then display_all_contacts
    when 5 then search_by_attribute call
    when 6 then exit
  end

  def add_new_contact
    puts "Enter First Name: "
    first_name = gets.chomp

    puts "Enter Last Name: "
    last_name = gets.chomp

    puts "Enter Email Address"
    email = gets.chomp

    p "Enter a Note:"
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end
end


  def modify_existing_contact
    contact = search_by_attribute
    if contact.count == 0
      "Oops, that didn't work! Try entering a different number."
    else
      puts "[1] Modify first name"
      puts "[2] Modify last name"
      puts "[3] Modify email"
      puts "[4] Modify note"
      puts "[5] Exit"
      puts "Enter a number:  "
      value = gets.chomp.to_i
      case value
        when 1
          "What would you like to change the first name to?"
          first_name = gets.chomp
          contact[0].first_name = first_name_new
          "You have changed this contact's name to #{first_name}."
        when 2
          "What would you like to change the last name to?"
          last_name = gets.chomp
          contact[0].last_name = last_name_new
          "You have changed this contact's name to #{last_name}."
        when 3
          "What would you like to change the email to?"
          email = gets.chomp
          contact[0].email = email_new
          "You have changed this contact's email to #{email}."
        when 4
          "What would you like to change the note to?"
          note = gets.chomp
          contact[0].note = note_new
          "You have changed this contact's note to #{note}."
        when 5 then exit
    else
      return "Oops, that didn't work! Try entering a different number."
    end
  end
end

  def delete_contact
    contact_to_remove = search_by_attribute
    puts "Which contact would you like to remove?"
    # contact_to_remove = gets.chomp
    # contact_to_remove.delete
    self.delete
  end
end

  def display_all_contacts
    #return the entire array (call on a class variable)
    all_contacts = Contact.all
    all_contacts.each do |display|
    puts "ID: #{display.id} Name: #{display.first_name} Last Name: #{display.last_name} Email: #{display.email} Note: #{display.note}"
  end
end

  def search_by_attribute
    .each do | |
      CRM.include?

    #iterate using each which includes the arguement attribute
    #returns the contact information based off input from desired attribute
    # => does this by if statement on the instance variables?
  end
